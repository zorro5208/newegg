<?php
//连接数据库
	include 'conn.php';
	
	//接收请求，接收id号
	$uid = isset($_GET['uid']) ? $_GET['uid'] : '11';
	$gid = isset($_GET['gid']) ? $_GET['gid'] : '4';
	$count = isset($_GET['count']) ? $_GET['count'] : '1';
	$sql = "SELECT * FROM cart WHERE uid = '$uid' AND gid= '$gid'";
	$res = $conn->query($sql);
//	var_dump($res);
	if($res->num_rows){
		//存在
		$sql = "UPDATE cart SET count=count+$count WHERE uid=$uid AND gid=$gid";
	    $res = $conn->query($sql);
	    $count = $count;
	}else{
		//不存在
		//数据语句
	    $sql = "INSERT INTO cart VALUES(null,$uid,$gid,$count)";
	    $res = $conn->query($sql);
	    
	}

	echo $count;
?>