<?php
	//连接数据库
	include 'conn.php';
	//接收请求，接收id号
	$uid = isset($_GET['uid']) ? $_GET['uid'] : '';
	//数据库语句//删除数据
	$sql = "DELETE FROM cart WHERE uid = '$uid'";
		
	//执行语句
	$res = $conn->query($sql);
//	var_dump($res);
	if($res == true){
		//删除成功
		echo 'yes';
	}else{
		echo 'no';
	}
?>