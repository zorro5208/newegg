<?php
//连接数据库
	include 'conn.php';
	
	//接收请求，接收id号
	$gid = isset($_GET['gid']) ? $_GET['gid'] : '';
	$uid = isset($_GET['uid']) ? $_GET['uid'] : '';
	
	$sql = "SELECT c.cid,c.count,g.name,g.price,g.imgurl,g.num FROM goodslist g,cart c WHERE c.gid = g.gid and c.uid = $uid";
	$res = $conn->query($sql);
	$content = $res->fetch_all(MYSQLI_ASSOC);
	echo json_encode($content,JSON_UNESCAPED_UNICODE);
?>