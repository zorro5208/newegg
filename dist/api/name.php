<?php
	include 'conn.php';
	$page = isset($_GET['page'])?$_GET['page']:'1';
	$num = isset($_GET['num'])?$_GET['num']:'16';
	$rank = isset($_GET['rank'])?$_GET['rank']:'';
	$type = isset($_GET['type'])?$_GET['type']:'';
	$txts = isset($_GET['txts'])?$_GET['txts']:'';
	$category = isset($_GET['category']) ? $_GET['category'] : '手机';
	// echo $txts;
	$index = ($page - 1)*$num;
	// echo $rank;
	// echo $type;
	if ($type) {
	   $sql = "SELECT * FROM goodslist WHERE category = '$category' AND $type LIKE '%$txts%' LIMIT $index,$num";
	}else {
	   $sql = "SELECT * FROM goodslist where category = '$category' LIMIT $index,$num";
	}
	
	$res = $conn -> query($sql);
	$content = $res->fetch_all(MYSQLI_ASSOC);
	// $sql2 ="SELECT * FROM products";
	// $res2 = $conn ->query($sql2);
	$data = array(
	        'count' => $res ->num_rows,
	        'productList'=> $content,
	        'page'=> $page,
	        'num'=>$num
	    );
	echo json_encode($data,JSON_UNESCAPED_UNICODE);
?>
