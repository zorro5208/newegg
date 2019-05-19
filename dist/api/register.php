<?php
	//连接数据库
	include 'conn.php';
	//接收数据
	$uname = isset($_POST['uname']) ? $_POST['uname'] : '';
	$password = isset($_POST['password']) ? $_POST['password'] : '';
	$phone = isset($_POST['phone']) ? $_POST['phone'] : '';
	//数据库语句
	$sql = "INSERT INTO userinfo (uname,password,phone) VALUES ('$uname','$password','$phone')";
	//执行语句
	$res = $conn -> query($sql);
//	var_dump($res);
	if($res == true) {
		//true,数据插入
		echo 'yes';
	}else{
		//数据插入失败
		echo 'no';
	}
?>