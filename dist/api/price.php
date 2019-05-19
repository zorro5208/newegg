<?php
//连接数据库
	include 'conn.php';
	//接收数据
	$page = isset($_GET['page'])?$_GET['page']:'1';
	$num = isset($_GET['num'])?$_GET['num']:'16';
	$type = isset($_GET['type'])?$_GET['type']:'price';
	$idx = isset($_GET['idx'])?$_GET['idx']:'4';
	$category = isset($_GET['category']) ? $_GET['category'] : '手机';
	//数据库语句
	$index = ($page - 1)*$num;
	if($idx == 0){//1500以下
		$sql = "SELECT * FROM goodslist WHERE category = '$category' AND $type BETWEEN 0 AND 1500 LIMIT $index,$num ";
	}if($idx == 1){
		$sql = "SELECT * FROM goodslist WHERE category = '$category' AND $type BETWEEN 1500 AND 3200 LIMIT $index,$num ";
	}if($idx == 2){
		$sql = "SELECT * FROM goodslist WHERE category = '$category' AND $type BETWEEN 3200 AND 4200 LIMIT $index,$num ";
	}if($idx == 3){
		$sql = "SELECT * FROM goodslist WHERE category = '$category' AND $type BETWEEN 4200 AND 5000 LIMIT $index,$num ";
	}if($idx == 4){
		$sql = "SELECT * FROM goodslist where category = '$category' LIMIT $index,$num";
	}
	
	//执行语句
	$res = $conn -> query($sql);
//	var_dump($res);
	$content = $res->fetch_all(MYSQLI_ASSOC);
	$data = array(
		'count' => $res ->num_rows,
	    'productList'=> $content,
	    'page'=> $page,
	    'num'=>$num
	);
	//返回数据给前端
	echo json_encode($data,JSON_UNESCAPED_UNICODE);
?>