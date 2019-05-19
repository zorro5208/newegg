<?php
	//1.链接数据库
	$severname = 'localhost';//主机名
	$username = 'root';//数据库登陆名
	$dbpsw = '';//数据库登陆密码，默认为空
	$dbname = 'newegg';//数据库名字
	
	//2。创建链接
	$conn = new mysqli($severname,$username,$dbpsw,$dbname);
//	3.检测连接
	if ($conn->connect_error) {
        die("连接失败: " . $conn->connect_error);
    } 
//	echo '连接成功';
//	关闭数据库
//	$conn -> close();
?>