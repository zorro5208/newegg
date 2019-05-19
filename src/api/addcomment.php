<?php
//连接数据库
	include 'conn.php';
	
	//接收请求，接收id号
	$val = isset($_POST['val']) ? $_POST['val'] : '';
	$uname= isset($_POST['uname']) ? $_POST['uname'] : '';
	
		$sql = "INSERT INTO `comment` (uname,content) VALUES ('$uname','$val')";
		//执行语句
		$res = $conn->query($sql);

		if($res == true){
			echo 'yes';
		}else{
			echo 'no';
		}
	
?>