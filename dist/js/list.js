$(function(){
	//引入头部，尾部
	$.ajax({
		url: "head.html",
		async: false,
		type: "get",
		dataType: "html",
		success: function(msg) {
		$("#head").html(msg)
		}
	});	
	$('#foot').load('foot.html');
	//二级菜单显示
	$(".menu").mouseenter(function(){
		$(".menulist").show()
	})
	$(".menu").mouseleave(function(){
		$(".menulist").hide()
	})
	
	//点击下拉菜单
	$(".left h1").on('click', function() {
		$(this).next().css('height',120).siblings("ul").css('height',0)
    });
   	
	layui.use('element', function() {
		var element = layui.element;
		var $ = layui.jquery;
		$(".layui-tab-title .d2").hover(function() {
			var $i = $(this).index();
			$(this).addClass("layui-this").css('.layui-this', 'orangered').siblings().removeClass("layui-this");
			$(".layui-tab-content .layui-tab-item").eq($i).addClass("layui-show").siblings().removeClass("layui-show");
		});
	});
});

(function() {
	var list = document.getElementById('glist');
	var lis = list.getElementsByTagName('li');
	var imgs = list.getElementsByClassName('img1');
	var btn = document.getElementById('btn'); //价格
	var abtn = btn.getElementsByTagName('a'); //按钮集合
	var btn1 = document.getElementById('btn1'); //价格
	var btn2 = document.getElementById('btn2'); //库存
//	console.log(btn2.children[0]);
	var btn3 = document.getElementById('btn3'); //默认
	var btn4 = document.getElementById('btn4'); //搜索
	var txt = document.getElementById('txt'); //搜素内容
	var nowpage = 0; //当前页
	var rank = ''; //升降序
	var num = 16; //条数
	var types = ''; //字段类型
	function init(pages, rank, types, txt) {
		ajax2({
			type: 'get',
			url: '../api/list.php',
			data: 'page=' + pages + '&num=' + num + '&rank=' + rank + '&type=' + types + '&txts=' + txt + '&category=手机',
			success: function(str) {
				//                   console.log(str);
				create(str);
			}
		})
	}
	init(1, rank, '', '');

	function create(str) {
		//           console.log(str);
		// console.log(rank);
		var arr = JSON.parse(str);
		var res = arr.productList.map(function(item) {
			return `<li class='prolist' data-id="${item.gid}">
							<a href='javascript:;' class='a_img'><img src="../img/${item.imgurl}"/></a>
							<a href='javascript:;' class='a_title'>${item.name}</a>
							<p class="p1">蛋券SJ05,满1000-30元,满3000-100</p>
							<p class='p2'><span class='price fl'>￥${item.price}</span><span class="fr sp">库存${item.num}</span></p>
							<p><button class="layui-btn btn1">购买</button><button class="layui-btn btn2">加入</button></p>
						</li>`;
		}).join('');
		list.innerHTML = res;
		//知道了总数量，可以求出页数
		pages = Math.ceil(arr.count / arr.num); //页数
		//				console.log(pages);
		var html = '<span class="first">首页</span>' + '<span class="prev">上</span>';
		for(var i = 0; i < pages; i++) {
			html += '<a href="##">' + (i + 1) + '</a>';
		}
		html += '<span class="next">下</span>' + '<span class="last">最后一页</span>';
		btn.innerHTML = html;
		console.log(arr.page);
		btn.children[parseInt(arr.page)+1].className = 'active';
		nowpage = arr.page; //获取当前页
		document.getElementById('count').innerHTML = arr.count;
		
	}
	//    //绑定事件：事件委托，点哪一页就跳转到哪一页
	btn.onclick = function(ev) {
		//点击页数
		if(ev.target.tagName.toLowerCase() == 'a') {
			nowpage = ev.target.innerHTML; //点击那个，获取到那个的内容
			init(nowpage, rank, types, '');
		}
		//点击首页按钮
		if(ev.target.className == 'first') {
			init(1, rank, types, '');
		} else if(ev.target.className == 'last') { //点击最后页按钮
			nowpage = abtn.length;
	
			init(nowpage, rank, types, '');
		} else if(ev.target.className == 'prev') { //点击上下按钮
			nowpage--;
			if(nowpage <= 1) {
				nowpage = 1;
			} 
			init(nowpage, rank, types, '');
			
		} else if(ev.target.className == 'next') {
			nowpage++;
			if(nowpage >= abtn.length) {
				nowpage = abtn.length;
			} 
			init(nowpage, rank, types, '');
			
		}
	
	}
	//价格排序
	var flag = true;
	btn1.onclick = function() {
		types = 'price';
		if(flag) {
			rank = 'ASC';
			isok = true;
			btn2.children[0].style.display = 'none';
			btn1.children[0].style.display = 'block';
			btn1.children[0].src = '../css/img/shang.png';
		} else {
			rank = 'DESC';
			btn1.children[0].src = '../css/img/xia.png';
		}
		flag = !flag;

		init(1, rank, types, '');
	}
	//库存排序
	var isok = true;
	btn2.onclick = function() {
		types = 'num';
		if(isok) {
			rank = 'ASC';
			flag = true;
			btn1.children[0].style.display = 'none';
			btn2.children[0].style.display = 'block';
			btn2.children[0].src = '../css/img/shang.png';
		} else {
			rank = 'DESC';
			btn2.children[0].src = '../css/img/xia.png';
		}
		isok = !isok;
		init(1, rank, types, '');
	}

	
	//默认排序
	btn3.onclick = function() {
		init(1, rank, '', '');
		isok = true;flag = true;
		btn1.children[0].style.display = 'none';
		btn2.children[0].style.display = 'none';
	}
	function b4(pages, types, txt) {
		var num = 16;
		types = 'name';
		ajax2({
			type: 'get',
			url: '../api/name.php',
			data: 'page=' + pages + '&num=' + num + '&type=' + types + '&txts=' + txt,
			success: function(str) {
				create(str);

			}
		})
	}
	//搜索
	btn4.onclick = function() {
		var pages = nowpage;
		var types = 'name';
		if(txt.value) {
			var test = txt.value;
			b4(nowpage, types, test);
			txt.value = '';
		} else {
			alert('请输入你要查找的内容');
		}
	}
	
	//左侧下拉菜单搜索
	var hw = document.getElementById('hw');//华为
	show(hw);
	var xm = document.getElementById('xm');//小米
	show(xm);
	var ry = document.getElementById('ry');//荣耀
	show(ry);
	var vv = document.getElementById('vv');//vivo
	show(vv);
	function show(id){
		id.onclick = function(){
			var test = this.innerHTML;
			var pages = nowpage;
			var types = 'name';
			b4(nowpage, types, test);
		}
	}
	
	//按价格分类查询
	function b3(pages, types,idx) {
		var num = 16;
		ajax2({
			type: 'get',
			url: '../api/price.php',
			data: 'page=' + pages + '&num='+num +'&category=手机' + '&type=' + types + '&idx=' + idx,
			success: function(str) {
//				console.log(str);
				create(str);
				
			}
		})
	}
	var price_btn = document.getElementById('price_btn');
	price_btn.onclick = function(ev){
		var pages = nowpage;
		console.log(pages);
		types = 'price';
		if(ev.target.tagName == 'A'){
			index = ev.target.getAttribute("data-index");
//			console.log(index);
			b3(pages,types,index);
		}
	}
	//跳转详情页
	list.onclick = function(ev) {
		if(ev.target.tagName == 'IMG') {
			var id = ev.target.parentNode.parentNode.dataset.id;
			window.location.href = 'detail.html?' + id;
		}
	}
})();
