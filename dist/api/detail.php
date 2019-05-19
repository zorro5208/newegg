<?php
	//连接数据库
	include 'conn.php';
	
	//接收请求，接收id号
	$gid = isset($_GET['gid']) ? $_GET['gid'] : '1';
	//数据库语句
	$sql = "SELECT goodslist.*,picture.* FROM goodslist,picture WHERE goodslist.gid = picture.gid AND goodslist.gid =$gid AND picture.gid =$gid";
	//执行语句
	$res = $conn->query($sql);
//	var_dump($res2);
	$content = $res->fetch_all(MYSQLI_ASSOC);
	$data = array(
		'productList' => $content,
		
	);
	echo json_encode($data,JSON_UNESCAPED_UNICODE);
?>