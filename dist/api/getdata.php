<?php
	//连接数据库
	include 'conn.php';
//查询所有数据
	$sql = "SELECT * FROM goodslist LIMIT 0,4";
	//执行语句
	$res = $conn -> query($sql);
	$content = $res->fetch_all(MYSQLI_ASSOC);
	$sql2 = "SELECT * FROM goodslist LIMIT 10,4";
	//执行语句
	$res2 = $conn -> query($sql2);
	$content2 = $res2->fetch_all(MYSQLI_ASSOC);
	
	$data = array(
		'data1'=>$content,
		'data2'=>$content2
	);
	//返回数据给前端
	echo json_encode($data,JSON_UNESCAPED_UNICODE);
?>