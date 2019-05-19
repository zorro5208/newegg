<?php
//连接数据库
	include 'conn.php';
	//接收请求，接收id号
	$cid = isset($_GET['cid']) ? $_GET['cid'] : '1';
	$nums = isset($_GET['nums']) ? $_GET['nums'] : '1';
	//数据库语句//更改数据
	$sql = "UPDATE cart SET count = '$nums' WHERE cid = '$cid'";
		
	//执行语句
	$res = $conn->query($sql);
//	var_dump($res);
	if($res == true){
		//更改成功
		echo 'yes';
	}else{
		echo 'no';
	}
?>