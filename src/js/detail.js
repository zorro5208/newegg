$(function() {
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
	//吸顶菜单//滚动事件
	var tab = $(".pro_tabs").offset().top;
	$(window).scroll(function(){
		var gdt=$(document).scrollTop()+80;
		if (gdt>=tab) {
			$(".pro_tabs").addClass("xuanfu").find("a").addClass("ff")
		} if(gdt<tab){
			$(".pro_tabs").removeClass("xuanfu").find("a").removeClass("ff")	
		}
	})
	//选项卡
	$('#content').on('click','.lis',function(){
//		console.log(1);
		$(document).scrollTop(200);
		$(this).addClass('cur').siblings().removeClass('cur');
		$('#content .tabl').eq($(this).index()).show().siblings().hide();
	})
	//回到顶部
	$(window).scroll(function(){
		var top=$(document).scrollTop();
		if (top > 1600) {
			$('.totop').show();
		} else{
			$('.totop').hide();
		}
		//点击快速回到顶部
		$('.totop').click(function(){
			$(window).scrollTop(0,0);
		})
	});
	//选择商品
	$('#data').on('click','.span1',function(){
		$(this).addClass('active').siblings().removeClass('active');
	});
	//数量加减
	$('#data').on('click','.plus_minus',function(){
		var num = $(this).index();
//		console.log(num);
		var nn = $(".num").val();
		if (num==0) {
			nn--
			if (nn <= 1) {
				nn = 1;
			}
			$(".num").val(nn);
		} else{
			nn++
			$(".num").val(nn);
		}
	});
	//商品详情请求数据渲染
	var gid = decodeURI(location.search).slice(1);
	$.ajax({
		type:"get",
		url:"../api/detail.php",
		async:true,
		data:{
			gid:gid
		},
		success: function(str){
//			console.log(str);
			var arr = JSON.parse(str); 
			//放大镜图片渲染
			$.res = arr.productList.map(function(item) {
				return `<li>
							<div class="small-img">
								<img src="../img/${item.imgurl}" class="img"/>
							</div>
						</li>
						<li>
							<div class="small-img">
								<img src="../img/${item.imgurl2}" />
							</div>
						</li>
						<li>
							<div class="small-img">
								<img src="../img/${item.imgurl3}" />
							</div>
						</li>
						<li>
							<div class="small-img">
								<img src="../img/${item.imgurl4}" />
							</div>
						</li>
						<li>
							<div class="small-img">
								<img src="../img/${item.imgurl5}" />
							</div>
						</li>`;
			}).join('');
		
			$('.animation03').html($.res);
		
			//放大镜插件使用：先渲染再调用插件
			var magnifierConfig = {
				magnifier: "#magnifier1", //最外层的大容器
				width: 450, //承载容器宽
				height: 440, //承载容器高
				moveWidth: null, //如果设置了移动盒子的宽度，则不计算缩放比例
				zoom: 5 //缩放比例
			};
			var _magnifier = magnifier(magnifierConfig);
			//商品信息渲染
			$.res2 = arr.productList.map(function(item){
				return `<div class="goods_title">
									<h1>${item.name}</h1>
									<p>输入蛋券SJ05,满1000-30元,满3000-100元,数量有限,先到先得!</p>
								</div>
								<div class="goods_info">
									<ul>
										<li>
											<div class="goods_info_name">品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌：</div>
        									<div class="godds_info_data"><a href="javascript:;" title="Apple 苹果" target="_blank">正品</a></div>
										</li>
										<li>
											<div class="goods_info_name">产品型号：</div>
        									<div class="godds_info_data">NB6666</div>
										</li>
										<li class="goods_price_now">
											<div class="goods_info_name">新&nbsp;&nbsp;蛋&nbsp;&nbsp;价：</div>
											<div><span class="goods_q">¥</span><span class="goods_price">${item.price}</span></div>
										</li>
										<li class="goods_info_support">
    										<div class="goods_info_name">商品支持：</div>
   											<div class="godds_info_data">
       										<a href="javascript:void(0)" class="goods_info_promise_logo promise_seven_day_off" title="不支持7天无理由退换货">不支持无理由退</a>
    										</div>
										</li>
										<li>
											<div class="goods_info_name">颜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色：</div>
        									<div class="godds_info_data">
        										<span class="span1">极光蓝</span>
        										<span class="span1">铂光金</span>
        										<span class="span1 active">幻夜黑</span>
        									</div>
										</li>
										<li>
											<div class="goods_info_name">版&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本：</div>
        									<div class="godds_info_data">
        										<span class="span2 active">全球通 4G+64G</span>
        									</div>
										</li>
										<li class="goods_info_cnts" id="buyQty">
											<div class="goods_info_name">数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;量：</div>
											<div class="godds_info_data posr">
												<a class="plus_minus minus" href="javascript:void(0);" ref1="1">-</a>
												<input class="num" type="text" value="1" maxlength="3" autocomplete="off">
												<a class="plus_minus plus" href="javascript:void(0);" ref1="">+</a>
												<span class="godds_cnts_tips"></span>       
	        									<span style="color:green">&nbsp;&nbsp;&nbsp;&nbsp;库存：有货${item.num}</span>	
											</div>
										</li>
									</ul>
									<div class="xbox" >
										<img src="../img/gou.png"/>
										<div class="rights">
											<p><h1>商品已经成功加入购物车<span class="no fr">X</span></h1></p>
											<p><a href="lists.html" >继续购物</a><a href="javascript:;" >去结算</a></p>
										</div>
									</div>
									<div class="goods_buy_btn">
										<a href="javascript:;" class="goods_common_btn" id="goods_buy" >
											立即购买
										</a>
										<a href="javascript:;" class="goods_common_btn" id="goods_cart" >
											加入购物车
										</a>
										<div class="goods_otherinfo">
											<img width="360px" src="../img/detail/in.png"/>
										</div>
									</div>
								</div>`;
			}).join('');
			$('#data').append($.res2);
			//商品详情信息渲染
			$.res3 = arr.productList.map(function(item){
				return `<div class="goods_xq_t">
							<h1 class="title">${item.name}</h1>
							<p><img src="../img/productdis_Newegggg.jpg"/></p>
							<div id="concent">
								<img src="../img/${item.imgurl7}"/>
								<img src="../img/${item.imgurl6}"/>
								<img src="../img/${item.imgurl8}"/>
								<img src="../img/${item.imgurl9}"/>
								<img src="../img/${item.imgurl10}"/>
							</div>
						</div>`;
			}).join('');
			$('.goods_xq').append($.res3);
			
			//商品加入购物车
			$('#data').on('click', '#goods_cart', function() {
				var count = $('.num').val(); //获取商品的数量
				var uid = $.cookie("uid");//用户id
//								console.log(uid);
			if(uid){
				$.ajax({
					type: 'get',
					url: '../api/addCart.php',
					data: {
						uid:uid,
						gid:gid,
						count:count
					},
					success: function(str) {
						var data = JSON.parse(str);
						console.log(data);
						if(data > 0) {
							$('.xbox').css('display','block');
//							//存到cookie
							$.cookie("cart", JSON.stringify(data.productList), {expires:7,path:'/'});
						} else {
							alert('添加失败');
						}
					}
				})
				
				//头部购物车
				$.ajax({
					type :'get',
					url : '../api/cart.php',
					data:{
						gid:gid,
						uid:uid
					},
					success : function(str){
						var arr1 = JSON.parse(str);
						console.log(arr1);
						var result =  arr1.map(function(item){
							return `
							<p class='tr sum'>金额总计：<span class='price'>¥${item.price*item.count}</span></p>
								<div class='prolist'>
									<li class='first'>
										<a class='a_img' href='javascript:;'><img src="../img/${item.imgurl}" /></a>
										<a class='a_title' href='javascript:;'>${item.name}</a>
										<div class='kl'>
										<span class='price'>${item.price}</span> x <span class='qty'>${item.count}</span>
										</div>
									</li>
								</div>`
						}).join('');
						$(".posia .inner").append(result);
					}
				})
				
				}else{
					var sf = confirm("是否登录？")
					if (sf) {
						open("login.html")
					} else{
						
					}
				}
			});
		}
	});
	
	
	//点击隐藏提示框
	$('#data').on('click', '.no', function() {
		$('.xbox').css('display', 'none');
	})
//	-----------------------------------------------
	//点击评论图标跳转到评论页面
	$('.totab2').click(function(){
		$('#list li').eq(0).removeClass('cur');
		$('#list li').eq(1).addClass('cur');
		$('.tab1').css('display','none');
		$('.tab2').css('display','block');
	})
//	留言板五星评价
	layui.use('rate', function(){
	    var rate = layui.rate;
	    //渲染
	    var ins1 = rate.render({
	      elem: '#test1',//绑定元素
	      theme: '#F7661F'
	   });
	});
	
	//留言板初始化
	function init() {
		$.ajax({
			type: "post",
			url: "../api/comment.php",
			async: true,
			success: function(str) {
				var arr1 = JSON.parse(str);
				var res4 = arr1.map(function(item) {
				return `
					<div class="liuyan">
						<div class="liuyan_l">
							<a href="javascript:;"><img src="../img/userAvtar_7.png"/></a>
							<a href="javascript:;">${item.uname}</a>
						</div>
						<div class="liuyan_r">
							<p>${item.content}</p>
							<p>${item.comtime}</p>
						</div>
					</div>
					`;
				}).join('');
			$('#con').append(res4);
			}
		});
	}
	init();
	//留言板发表评论
	$('.layui-btn').click(function(){
		 var val1 = $('.layui-textarea').val();
		 var uname = $.cookie("uname");
//		console.log($.val);
		if(val1){
			$.ajax({
				type:"post",
				url:"../api/addcomment.php",
				async:true,
				data:{
					val : val1,
					uname : uname
				},
				success: function(str){
					console.log(str);
					if(str == 'yes'){
						//插入成功
						init();
					}
				}
			});
		}else{
			alert('内容不能为空！');
		}
	})
})
