$(function(){
	function init(){
		//数据渲染
		var gid = decodeURI(location.search).slice(1);
		var uid = $.cookie("uid");//用户id
		$.ajax({
			type :'get',
			url : '../api/cart.php',
			data:{
				gid:gid,
				uid:uid
			},
			success : function(str){
				var data = JSON.parse(str);
//				console.log(data);
				var html = data.map(function(item){
					return `
                       					<tr class="bb " data-id="${item.cid}">
                       					<td class="pt20 ">
                       						<input class="vm cbx btn"  type="checkbox">
                       					</td>
                       					<td valign="top " class="pt20 pd ">
                       						<table width="100% " border="0">
                       							<tr>
                       								<td valign="top " class="pt20 " width="80 ">
                       									<a href="javascript:; " class="a_img "><img src="../img/${item.imgurl}"/></a>
                       								</td>
                       								<td class="pl10 pb20 " valign="top ">
														<a href="javascript:; " class="a_title ">${item.name}</a>
                       								</td>
                       								
                       							</tr>
                       						</table>
                       					</td>
                       					<td align="center " valign="middle " class="pt20 ">
                       						<p class="price Arial14 ">${item.price}</p>
                       					</td>
                       					<td align="center " valign="middle " class="pt20 ">
                       						<div class="center ">
                       							<input class="textbox tex" type="text " data-num="${item.num}" value="${item.count}" >
                       							<span class="inlineblock">
                           							<span class="plusminus " ></span>
                            						<span class="plusminus1 minus "></span>
                       							</span>
                       						</div>
                       					</td>
                       					<td align="center " valign="middle " class="pt20 ">
                       						<span class="orange Arial14 qq ">￥${item.price*item.count}</span>
                       					</td>
                       					<td align="center " valign="middle " class="pt20 pr10 ">
                       						<a href="${item.cid}" class="del">删除</a><br />
                       					</td>
                       				</tr>
                       				`;
				}).join('');
				$('.zhuti').append(html);
			}
		});
	}
	init();
	
	//数量的加减,事件委托
	//数量加
	$('.zhuti').on('click','.plusminus ',function(){
		var cid = $(this).parent().parent().parent().parent().data('id');
		var num = $(this).parent().prev().val();
		var kucun = $(this).parent().prev().data('num');
		num++;
		//上限：库存量
		if(num >= kucun) {
			num = kucun;
		}
		$.ajax({
			type:"get",
			url:"../api/updateCart.php",
			data : 'cid='+cid +'&nums='+num,
			success : function(str){
//				console.log(str);
			}
		});
		$(this).parent().prev().val(num);
		total($(this));
	});
	//数量减
	$('.zhuti').on('click','.minus',function(){
		var cid = $(this).parent().parent().parent().parent().data('id');
		var num = $(this).parent().prev().val();
		num--;
		//上限：库存量
		if(num <=1) {
			num = 1;
		}
		$.ajax({
			type:"get",
			url:"../api/updateCart.php",
			data : 'cid='+cid +'&nums='+num,
			success : function(str){
//				console.log(str);
			}
		});
		$(this).parent().prev().val(num);
		total($(this));
	});
	
	//手动改变数量
	$('.zhuti').on('input','.textbox',function(){
		var cid = $(this).parent().parent().parent().data('id');
//		console.log(cid);
		var num = $(this).val();
		var kuncun = $(this).data('num');
		//上限：库存量
		if(num <= 1) {
			num = 1;
		}else if(num >= kuncun){
			num = kuncun
		}
		$.ajax({
			type:"get",
			url:"../api/updateCart.php",
			data : 'cid='+cid +'&nums='+num,
			success : function(str){
//				console.log(str);
			}
		});
		$(this).val(num);
		total($(this));
	});
	//小计
	function total(now) {
		//找数量
		var count =$(now).parent().prev().val();
		//找单价
		var price = $(now).parent().parent().parent().prev().children().text();
		//小计=数量 * 单价
		var xiaoji = parseInt((count * price).toFixed(0));
				console.log(count,price,xiaoji);
		$(now).parent().parent().parent().next().children().html('￥' + xiaoji);
		all();
	}
	
	//删除当行
	$('.zhuti').on('click', '.del', function(e) {
		e.preventDefault();
		var cid = $(this).attr("href");
		console.log(cid);
		var res = confirm('您确定要删除吗？');
		if(res) {
			$.ajax({
				type:"get",
				url:"../api/delCart.php",
				data : {cid:cid},
				success : function(str){
	//				init();
	//				console.log(str);
					if (str == 'yes') {
						$('.bb').remove();
						init();
						$('.qx').prop('checked', false);
					}else{
						alert('删除失败');
					}
				}
			});
		}
		update();
	});
	
	//全选
	$('.goodslist input').click(function() {
		var isok = $('.goodslist input').prop('checked');
		$('.cbx').prop('checked', isok);
		all();

	});
	
	//点击复选框控制全选
	$('.zhuti').on('click', '.cbx', function() {
		var len = $('.btn:checked').size();
		var total = $('.btn').size();
		if(len == total) {
			//证明全部勾选了
			$('.goodslist input').prop('checked', true);
		} else {
			$('.goodslist input').prop('checked', false);
		}
		all(); //刷新总数量和总价格
	});
	
	//计算总数量和总价格
	var arr = [];

	function all() {

		$('.btn').each(function(i, item) {
			if($(item).prop('checked')) {
				//这一行被勾选，把的下标存到数组里面
				arr.push(i);

			}
		});
		//		console.log(arr);

		//求总数量
		var numb = 0;
		var price = 0;
		arr.forEach(function(item) { //0 1 
			numb += $('.tex').eq(item).val() * 1;
			price += $('.qq').eq(item).text().slice(1) * 1;
			console.log(price);
		});

		//		console.log(num,price.toFixed(2));

		//渲染
		$('.count').html('已选 ' + numb + ' 件商品');
		$('.qqq').html('￥' + price.toFixed(2));
		arr = []; //数组用完就清空
	}
	//全删
	$('.delall').click(function() {
		var newarr = [];
		$('.btn').each(function(i, item) {
			if($(item).prop('checked')) {
				//这一行被勾选，把的下标存到数组里面
				newarr.push(i);

			}
		});

		//删掉多行
		var res = confirm('您确定要全删吗？');
		if(res) {
			for(var i = newarr.length - 1; i >= 0; i--) {
				$('.bb').eq(newarr[i]).remove();
			}
			var uid = $.cookie("uid");
			$.ajax({
				type:"get",
				url:"../api/clearCart.php",
				data : {uid:uid},
				success : function(str){
					if (str == 'yes') {
	//					alert('删除成功');
						$('.zhuti').remove();
						init();
						$('.tip').show();
						$('.qx').prop('checked', false);
					}else{
						alert('删除失败');
					}
				}
			});
			//刷新价格
			all();
		}

	});
})
