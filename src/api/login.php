<?php
	//连接数据库
	include 'conn.php';
	
	//接收数据
	$uname = isset($_POST['uname']) ? $_POST['uname'] : '';
	$password = isset($_POST['pwd']) ? $_POST['pwd'] : '';
	
	//查询语句
	$sql = "SELECT * FROM userinfo WHERE uname = '{$uname}' AND password ='{$password}'";

	//执行语句
	$res = $conn -> query($sql);
//	var_dump($res);
	if($res->num_rows){
		//1真，存在，匹配成功
		echo 'yes';
	}else{
		//0假，不存在，不匹配
		echo 'no';
	}
?>