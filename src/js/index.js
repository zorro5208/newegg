(function() {
//	大轮播图
	var s1 = new Swiper('.swiper-container1', {
		autoplay: { //自动轮播
			delay: 2000, //间隔时间
			disableOnInteraction: false //拖拽完后还能继续自动轮播
		},
		loop: true, //无缝 环路
		navigation: { //上下按钮
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev'
		},
		pagination: { //焦点跟随
			el: '.swiper-pagination',
			clickable: true, //点击焦点跳到指定图片
			renderBullet: function(index, className) {
				return '<span class="' + className + '">' + (index + 1) + '</span>'; //生成焦点数字
			}
		},
		effect : 'fade'//选用:效果
	});

	var oBox1 = document.getElementById('swiper-container1');
	oBox1.onmouseover = function() { //鼠标经过停止
		s1.autoplay.stop();
	}
	oBox1.onmouseout = function() { //鼠标离开就运动
		s1.autoplay.start();
	}
	
//	手机轮播图
	var s2 = new Swiper('.swiper-container2', {
		autoplay: { //自动轮播
			delay: 2000, //间隔时间
			disableOnInteraction: false //拖拽完后还能继续自动轮播
		},
		loop: true, //无缝 环路
		pagination: { //焦点跟随
			el: '.swiper-pagination',
			clickable: true, //点击焦点跳到指定图片
			renderBullet: function(index, className) {
				return '<span class="' + className + '">' + (index + 1) + '</span>'; //生成焦点数字
			}
		},
	});

	var oBox2 = document.getElementById('swiper-container2');
	oBox2.onmouseover = function() { //鼠标经过停止
		s2.autoplay.stop();
	}
	oBox2.onmouseout = function() { //鼠标离开就运动
		s2.autoplay.start();
	}
	
	var s3 = new Swiper('.swiper-container3', {
		autoplay: { //自动轮播
			delay: 2000, //间隔时间
			disableOnInteraction: false //拖拽完后还能继续自动轮播
		},
		loop: true, //无缝 环路
		pagination: { //焦点跟随
			el: '.swiper-pagination',
			clickable: true, //点击焦点跳到指定图片
			renderBullet: function(index, className) {
				return '<span class="' + className + '">' + (index + 1) + '</span>'; //生成焦点数字
			}
		},
	});

	var oBox3 = document.getElementById('swiper-container3');
	oBox3.onmouseover = function() { //鼠标经过停止
		s2.autoplay.stop();
	}
	oBox3.onmouseout = function() { //鼠标离开就运动
		s2.autoplay.start();
	}
	
	var s4 = new Swiper('.swiper-container4', {
		autoplay: { //自动轮播
			delay: 2000, //间隔时间
			disableOnInteraction: false //拖拽完后还能继续自动轮播
		},
		loop: true, //无缝 环路
		pagination: { //焦点跟随
			el: '.swiper-pagination',
			clickable: true, //点击焦点跳到指定图片
			renderBullet: function(index, className) {
				return '<span class="' + className + '">' + (index + 1) + '</span>'; //生成焦点数字
			}
		},
	});

	var oBox4 = document.getElementById('swiper-container4');
	oBox4.onmouseover = function() { //鼠标经过停止
		s2.autoplay.stop();
	}
	oBox4.onmouseout = function() { //鼠标离开就运动
		s2.autoplay.start();
	}
	
	//限时购
	var time = document.getElementById('time');
	shopping('2019-5-31 00:00:00',time);
	
	//小轮播图
	layui.use('carousel', function(){
	  var carousel = layui.carousel;
	  //建造实例
	  carousel.render({
	    elem: '#test1',
	    width: '230', //设置容器宽度
	    height: '241',
	    arrow: 'none' //始终显示箭头
	  });
	});
	
//	限时购轮播
	var box2 = document.getElementById('box2');//大盒子
	var prve = document.getElementById('prve');//上
	var next = document.getElementById('next');//下
	var picture = document.getElementById('picture');//列表盒子
	var list = picture.getElementsByTagName('ul');
	var iw = list[0].offsetWidth;
//	console.log(list);
	var idx = 0;//存可视区的下标
	
	//把全部图放在右边，第一张放在可视区
	for(var lists of list){
		
		lists.style.left = iw + 'px';
	}
	list[0].style.left = 0 + 'px';
	//开定时器
	var timer2 = setInterval(function(){
		goNetx();
	},6000);

//	//下一页
	function goNetx(){
		startMove(list[idx],{'left': -iw});
		idx++;
		if (idx >= list.length) {
			idx = 0;
		}
		list[idx].style.left = iw + 'px';
		startMove(list[idx],{'left': 0});
		
	}
//	//上一页
	function goPrve(){
		startMove(list[idx],{'left': iw});
		idx--;
		if (idx <= -1) {
			idx = list.length-1;
		}
		list[idx].style.left = -iw + 'px';
		startMove(list[idx],{'left': 0});
	}
	//鼠标移入时，暂停播放,关闭定时器
	box2.onmouseover = function(){
		clearInterval(timer2);
	}
	//鼠标移出时，重新播放,开启定时器
	box2.onmouseout = function(){
		timer2 = setInterval(goNetx,6000);
	}
	prve.onclick = function(){
		goPrve();
	}
	next.onclick = function(){
		goNetx();
	}
	
//	好评热卖
	var hot = document.getElementById('hot');
	var boxlist = hot.children;
//	console.log(list);
	hot.onmouseover = function(ev){
		if (ev.target.className == 'c1' || ev.target.className == 'img1') {
			startMove(boxlist[0],{'left':0});
			startMove(boxlist[1],{'left':630});
			startMove(boxlist[2],{'left':840});
			startMove(boxlist[3],{'left':1030});
		}
		if (ev.target.className == 'c22' || ev.target.className == 'img2') {
			startMove(boxlist[0],{'left':0});
			startMove(boxlist[1],{'left':190});
			startMove(boxlist[2],{'left':840});
			startMove(boxlist[3],{'left':1030});
		}
		if (ev.target.className == 'c3' || ev.target.className == 'img3') {
			startMove(boxlist[0],{'left':0});
			startMove(boxlist[1],{'left':190});
			startMove(boxlist[2],{'left':390});
			startMove(boxlist[3],{'left':1030});
		}
		if (ev.target.className == 'c4' || ev.target.className == 'img4') {
			startMove(boxlist[0],{'left':0});
			startMove(boxlist[1],{'left':190});
			startMove(boxlist[2],{'left':390});
			startMove(boxlist[3],{'left':580});
		}
	}
//	热卖区
	var btn = document.getElementById('btn');//按钮
	var uls = document.getElementById('uls');//列表盒子
	var list2 = uls.getElementsByTagName('ul');
	var iw2 = list2[0].offsetWidth;
//	console.log(iw2);
	var idx2 = 0;//存可视区的下标
	
	//把全部图放在右边，第一张放在可视区
	for(var ul2 of list2){
		
		ul2.style.left = iw2 + 'px';
	}
	list2[0].style.left = 0 + 'px';
	//点击按钮切换
	btn.onclick = function(){
		move();
	}
//	//下一页
	function move(){
		startMove(list2[idx2],{'left': -iw2});
		idx2++;
		if (idx2 >= list2.length) {
			idx2 = 0;
		}
		list2[idx2].style.left = iw2 + 'px';
		startMove(list2[idx2],{'left': 0});
		
	}
	
//	回到顶部
	var box = document.getElementById('box');
		//需求：滚动到300px的时候，就出现回到顶部按钮，点击按钮就可以快速回到顶部
		//ele:按钮   ih:到哪里显示；speed:步长
		toSlowtop(box,1400,300);
})()

$(function() {
	//注意：选项卡 依赖 element 模块，否则无法进行功能性操作
	layui.use('element', function() {
		var element = layui.element;
		var $ = layui.jquery;
		$(".layui-tab-title .d1").hover(function() {
			var $i = $(this).index();
			$(this).addClass("layui-this").css('.layui-this', 'orangered').siblings().removeClass("layui-this");
			$(".layui-tab-content .layui-tab-item").eq($i).addClass("layui-show").siblings().removeClass("layui-show");
		});
	});
	
	//引入头部，尾部
	$.ajax({
		url: "html/head.html",
		async: false,
		type: "get",
		dataType: "html",
		success: function(msg) {
		$("#head").html(msg)
		}
	});	
	$('#foot').load('html/foot.html');
	//显示分类菜单
	$(".menulist").show();
	
	//数据渲染
	
	//前四条数据
	$.ajax({
		type:"get",
		url:"api/getdata.php",
		async:true,
		success:function(str){
			var data = JSON.parse(str);
				var res = data.data1.map(function(item){
				return`
					<li data-id="${item.gid}">
						<p class="p_tupian t1"><a href="##">
							<img src="img/${item.imgurl}"/>
						</a></p>
						<p class="p_jianjie"><a href="##">${item.name}</a></p>
						<p class="p_price"><span>¥${item.price}.00</span></p>
					</li>
				`;
			}).join('');
			$('.data').append(res);
		}
	});
	//后四条数据
	$.ajax({
		type:"get",
		url:"api/getdata.php",
		async:true,
		success:function(str){
			var data = JSON.parse(str);
				var res = data.data2.map(function(item){
				return`
					<li data-id="${item.gid}">
						<p class="p_tupian t1"><a href="##">
							<img src="img/${item.imgurl}"/>
						</a></p>
						<p class="p_jianjie"><a href="##">${item.name}</a></p>
						<p class="p_price"><span>¥${item.price}.00</span></p>
					</li>
				`;
			}).join('');
			$('.data2').append(res);
		}
	});
	
	//点击跳转详情页
	$('#picture').on('click','li',function(){
		var gid = $(this).data('id');
		window.location.href = 'html/detail.html?' + gid;
	})
})