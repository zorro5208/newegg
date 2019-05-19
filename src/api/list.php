<?php
	//连接数据库
	include 'conn.php';
	//接收数据
	$page = isset($_GET['page'])?$_GET['page']:'1';
	$num = isset($_GET['num'])?$_GET['num']:'16';
	$rank = isset($_GET['rank'])?$_GET['rank']:'';
	$type = isset($_GET['type'])?$_GET['type']:'';
	$txts = isset($_GET['txts'])?$_GET['txts']:'';
	$idx = isset($_GET['idx'])?$_GET['idx']:'4';
	$category = isset($_GET['category']) ? $_GET['category'] : '手机';
	//数据库语句
	$index = ($page - 1)*$num;
	if($type){
		$sql = "SELECT * FROM goodslist WHERE category = '$category' ORDER BY $type $rank LIMIT $index,$num ";
	}else{
		$sql = "SELECT * FROM goodslist where category = '$category' LIMIT $index,$num";
	}
	
	//查询所有数据
	$sql2 = "SELECT * FROM goodslist where category = '$category'";
	//执行语句
	$res = $conn -> query($sql);
	$res2 = $conn -> query($sql2);
	$content = $res->fetch_all(MYSQLI_ASSOC);
	$data = array(
		'count' => $res2 ->num_rows,
	    'productList'=> $content,
	    'page'=> $page,
	    'num'=>$num
	);
	//返回数据给前端
	echo json_encode($data,JSON_UNESCAPED_UNICODE);
?>