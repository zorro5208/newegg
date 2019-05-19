<?php
//连接数据库
	include 'conn.php';
	$uname = isset($_GET['uname']) ? $_GET['uname'] : '';
	
	//数据库语句
	$sql = "SELECT uid FROM userinfo WHERE uname = '$uname'";
//	each $uname;
	//执行语句
	$res = $conn->query($sql);
	
	$content = $res->fetch_all(MYSQLI_ASSOC);
	echo json_encode($content,JSON_UNESCAPED_UNICODE);
?>