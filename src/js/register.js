$(function(){
	var isok1 = false;//用户名开关
	var isok2 = false;//密码开关
	var isok3 = false;//确认密码开关
	var isok4 = false;//号码开关
	var isok5 = false;//验证码开关
//	用户名验证
	$('#name').click(function(){
		$('.span2').eq(0).html('用户名以字母开头，不得使用特殊字符，长度为6-20');
		$('.span2').eq(0).css('color','#000');
	})
	$('#name').blur(function(){
//		console.log(1);
		$.ajax({
			type : 'get',
			url : '../api/checkName.php',
			data : 'uname=' + $('#name').val(),
			success : function(str){
				console.log(str);
				if ($('#name').val()) {
					//不为空
					if (str == 'yes') {
						//可以注册，正则验证
						var reg = /^[a-zA-Z][\w\-]{5,19}$/;
						var res = reg.test($('#name').val());
						if(res){
							//正则匹配成功
							$('.span2').eq(0).html('用户名验证通过');
							$('.span2').eq(0).css('color','#58BC58');
							isok1 = true;
						}else{
							$('.span2').eq(0).html('用户名验证不通过！');
							$('.span2').eq(0).css('color','red');
							isok1 = false;
						}
					}else{
						$('.span2').eq(0).html('该用户名已被注册！');
						$('.span2').eq(0).css('color','red');
						isok1 = false;
					}
				}else{
					//为空
					$('.span2').eq(0).html('用户名不能为空！');
					$('.span2').eq(0).css('color','red');
					isok1 = false;
				}
			}
		});
	})
	

//	手机号码验证
	$('#phone').click(function(){
		$('.span2').eq(1).html('填写正确的手机号码');
		$('.span2').eq(1).css('color','#000');
	})
	$('#phone').blur(function() {
		//		console.log(5);
		if($('#phone').val()) {
			//不为空、
			//可以注册，正则验证
			var reg = /^1[1-9]\d{9}$/;
			var res = reg.test($('#phone').val());
			if(res) {
				//正则匹配成功
				$('.span2').eq(1).html('手机号码验证通过');
				$('.span2').eq(1).css('color', '#58BC58');
				isok4 = true;
			} else {
				$('.span2').eq(1).html('手机号码验证不通过！');
				$('.span2').eq(1).css('color', 'red');
				isok4 = false;
			}
		} else {
			//为空
			$('.span2').eq(1).html('手机号码不能为空！');
			$('.span2').eq(1).css('color', 'red');
			isok4 = false;
		}
	
	})
//	验证码验证
	$.ranCode = function () {
		html = '0987654321zxcvbnmkjhgfdsaqwertyuioplZXCVBNMLKJHGFDSAQWERTYUIOP';
		var num = ''; //存放四位随机数
		for(var i = 0; i < 5; i++) {
			//定义html的随机下标数
			var now = parseInt(Math.random() * html.length); //长度为0-html.length-1 //now为下标
			num += html[now];
			$('#num').html(num);
//			console.log($('#num').html());
		}
		return num;
	}
	$.ranCode();
	//点击刷新验证码
	$('#num').click(function(){
//		alert(1);
		$.ranCode();
	});
	$('#checkNum').blur(function() {
//				console.log(1);
		if($('#checkNum').val()) {
			//不为空、
			//可以注册，验证
			var val1 = $('#num').html();
//			console.log(val1);
			var val2 = $('#checkNum').val();//输入的验证码
			if(val1.toLowerCase() == val2.toLowerCase()) {
				//正则匹配成功
				$('.span2').eq(2).html('验证码验证通过');
				$('.span2').eq(2).css('color', '#58BC58');
				isok5 = true;
			} else {
				$('.span2').eq(2).html('验证码验证不通过！');
				$('.span2').eq(2).css('color', 'red');
				isok5 = false;
			}
		} else {
			//为空
			$('.span2').eq(2).html('验证码不能为空！');
			$('.span2').eq(2).css('color', 'red');
			isok5 = false;
		}
	
	})
	//获取手机验证码
	$('#gettel').click(function(){
		if (isok1 && isok4 && isok5) {
			$('.tel').css('display','block');
			$('.span3').css('display','block');
			$('#next').css('display','block');
			$(this).css('display','none');
			$.ajax({
				type:'post',
				url:"../api/duanxin.php",
				data:'userphone=' + $('#phone').val(),
				success: function(str){
					console.log(str);
					var nums = 60;
					var timer = setInterval(function() {
						nums--;
						if(nums <= 0) {
							clearInterval(timer);
							$('.span3').css('display','none');
							$('.msg').html('点击重新获取');
							$('.msg').css('color', 'red');
						}
						$('.span3').html(nums + '秒');
					}, 1000);
				}
			});
		} else{
			alert('请完善全部信息');
		}
	})
	//点击下一步
	$('#next').click(function(){
		var randnum = $.cookie("randnum");
		//判断手机验证码是否正确
		if ($('#tel').val() == randnum) {
			$('.pp1').css('background-position-y',-65);
			$('.tab1').css('display','none');
			$('.tab2').css('display','block');
		}else{
			alert('手机验证码错误');
		}
	})
	//	密码验证
	$('#password').click(function(){
		$('.span2').eq(4).html('密码最少6位，包括数字，大小写字母，特殊字符');
		$('.span2').eq(4).css('color','#000');
	})
	$('#password').blur(function() {
		//		console.log(1);
		if($('#password').val()) {
			//不为空、
			//可以注册，正则验证
			var reg = /^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*?.]).*$/;
			var res = reg.test($('#password').val());
			if(res) {
				//正则匹配成功
				$('.span2').eq(4).html('密码验证通过');
				$('.span2').eq(4).css('color', '#58BC58');
				isok2 = true;
			} else {
				$('.span2').eq(4).html('密码验证不通过！');
				$('.span2').eq(4).css('color', 'red');
				isok2 = false;
			}
		} else {
			//为空
			$('.span2').eq(4).html('密码不能为空！');
			$('.span2').eq(4).css('color', 'red');
			isok2 = false;
		}
	
	})
//	确认密码验证
	$('#repassword').click(function(){
		$('.span2').eq(5).html('确认密码与密码一致');
		$('.span2').eq(5).css('color','#000');
	})
	$('#repassword').blur(function() {
		//		console.log(5);
		if($('#repassword').val()) {
			//不为空、
			//可以注册，正则验证
			var reg = $('#password').val();
			console.log(reg);
			var res = $('#repassword').val();
			if(reg == res) {
				//正则匹配成功
				$('.span2').eq(5).html('密码验证通过');
				$('.span2').eq(5).css('color', '#58BC58');
				isok3 = true;
			} else {
				$('.span2').eq(5).html('密码验证不通过！');
				$('.span2').eq(5).css('color', 'red');
				isok3 = false;
			}
		} else {
			//为空
			$('.span2').eq(5).html('密码不能为空！');
			$('.span2').eq(5).css('color', 'red');
			isok3 = false;
		}
	})
	//点击注册，提交表单
	$('#register').click(function(){
		if(isok1 && isok2 && isok3 && isok4 && isok5) {
			$.ajax({
				type:"post",
				url:"../api/register.php",
				data : {
					"uname" : $('#name').val(),
					"password" : $('#password').val(),
					"phone" : $('#phone').val(),
				},
				async:true,
				success :function(str){
//					console.log(str);
					if (str == 'yes') {
						window.location.href = 'login.html?' + $('#name').val();
					} else{
						alert('注册失败');
					}
				}
			});
		}else{
			alert('请完善信息!');
		}
	});
})
