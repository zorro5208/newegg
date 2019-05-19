$(function(){
	
	//二级菜单事件
	var nav = $(".menunav")
	var navbg = $(".item dl dt .links")
	$(".navlist2").mouseover(function(){
		nav.css({"background":"#f7f7f7"})
		navbg.addClass("navbg")
		$(this).addClass("navlist2bg")
		$(this).find("dd").show()
	})
	$(".navlist2").mouseout(function(){
		nav.css({"background":"#fff"})
		navbg.removeClass("navbg")
		$(this).removeClass("navlist2bg")
		$(this).find("dd").hide()
	})
	
	//导航右边购物车和收藏
		//移入
	$(".mya").mouseenter(function(){
			$(this).addClass("bgbr").find(".openrc").show();
			$(this).find(".nava").removeClass();
			$(this).find(".openr").find("a").find("i").addClass("navi")
	})
		//移出
	$(".mya").mouseleave(function(){
			$(this).removeClass("bgbr").find(".openrc").hide()
			$(this).find(".openr").find("a").addClass("nava")
			$(this).find(".openr").find("a").find("i").removeClass("navi")
	})
	
	//判断是否登录状态
	$.types = function(){
		var html = '';
		if($.cookie("uname")){
			//存在，已经登录状态
			html = `<ul>
					<li class="pl10">
						<a href="#">`+$.cookie("uname")+`</a>
					</li>
					<li class="pl10">
						<p>你好,欢迎来到新蛋！</p>
					</li>
					<li class="pl10">
						<a href="#" class="out">退出</a>
					</li>
				</ul>`;
		}else{
			html = `<ul>
						<li class="pl10">
							<a href="html/register.html">注册</a>
						</li>
						<li class="pl10"><span>|</span></li>
						<li class="pl10">
							<a href="html/login.html">登录</a>
						</li>
						<li class="pl10">
							<p>你好,欢迎来到新蛋!</p>
						</li>
					</ul>`;
		}
		$('.r1').append(html);
	}
	$.types();
	//点击退出登录
	$('.r1').on('click','.out',function(){
		$.cookie("uname",'',{ expires: -1, path: '/' });
		$.cookie("uid",'',{ expires: -1, path: '/' });
		$.cookie("cart",'',{ expires: -1, path: '/' });
		$.cookie("randnum",'',{ expires: -1, path: '/' });
		$.types();
		window.location.href = 'html/login.html';
	});
	
	//点击搜索
	
		//商品加入购物车
			if($.cookie("cart")){
				
				//移入
				$('.empty').hide();
				var uid = $.cookie("uid");
				var gid = decodeURI(location.search).slice(1);
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
//						console.log(arr1);
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
				$('.empty').show();
			}
			
			
				
			
			
})
	
