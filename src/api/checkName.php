<?php
	//连接数据库
	include 'conn.php';
	//接收数据
	$uname = isset($_GET['uname']) ? $_GET['uname'] : 'zorro1111';
	//数据库语句
	$sql = "SELECT * FROM userinfo WHERE uname = '$uname'";
	//执行语句
	$res = $conn -> query($sql);
//	var_dump($res);
	if($res->num_rows) {
		//1真：存在，不给注册
		echo 'no';
	}else{
		//0假：不存在，可以注册
		echo 'yes';
	}
?>