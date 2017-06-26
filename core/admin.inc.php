<?php 
	
	require_once '../include.php';

	function checkAdmin($conn, $sql)
	{
		return fetchOne($conn, $sql);
	}
	function checkLogined(){
		if($_SESSION['adminId']==""){
			alertMes("请先登陆","login.php");
		}
	}