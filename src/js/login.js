$(function(){
	
	//点击登录
	$('#rightNow').click(function(){
		if ($.cookie("uname")) {
			//用户名存在，不能第二次登录
			alert('请退出账号再登录');
		}else{
			//通过用户名获取id
					$.ajax({
						type:"get",
						url:"../api/getuid.php",
						data:'uname=' + $('#name').val(),
						async:true,
						success: function(str){
							var arr = JSON.parse(str);
		//					console.log(arr[0].uid);
							$.cookie("uid",arr[0].uid,{ expires: 7, path: '/' });
						}
					});
			//用户名不不存在，可以登录
			$.ajax({
				type:"post",
				url:"../api/login.php",
				data:{
					uname : $('#name').val(),
					pwd : $('#password').val()
				},
				success: function(str){
					if ($('#name').val()&&$('#password').val()) {
						//不为空
						console.log(str);
						if (str == 'yes') {
							//匹配成功
							//把数据存到cookie
							$.cookie("uname",$('#name').val(),{ expires: 7, path: '/' });
							
							window.location.href = '../index.html' ;
						}else{
							alert('用户名或密码错误！')
						}
					}else{
						alert('请完善信息！');
					}
					
				}
			});
		}
	})
})
