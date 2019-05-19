<?php
//连接数据库
	include 'conn.php';
		//数据插入成功
		$sql = "SELECT * FROM `comment`";
		$res = $conn->query($sql);
		$content = $res->fetch_all(MYSQLI_ASSOC);
	
	echo json_encode($content,JSON_UNESCAPED_UNICODE);
?>