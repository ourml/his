<?php 
	require_once '../include.php';
	checkLogined();

	switch ($_GET['act']) {
		case 'add':
			$pwd = md5($_POST['a_pwd']);
			$aeid = $_POST['a_e_id'];
			$sql = "insert into admin (a_pwd, a_e_id) values('{$pwd}', '{$aeid}')";
			if ($conn->query($sql)) {
				header("location: index.php");
			}else {
				alertMes("添加失败", 'addAdmin.php');
			}
			break;
		
		case 'del':
			$eid = $_GET['eid'];
			$table = "admin";
			$where = "a_e_id='{$eid}'";
			delete($conn, $table, $where);
			header("location: index.php");
			break;

		case 'update':
			$eid = $_GET['eid'];
			$pwd = md5($_POST['a_pwd']);
			$sql = "update admin set a_pwd='{$pwd}' where a_e_id='{$eid}'";
			if ($conn->query($sql)) {
				header("location: index.php");
			}else {
				alertMes("更新密码失败，请重试！", 'updateAdmin.php');
			}
			break;
		default:
			$_SESSION=array();
			session_destroy();
			header("location: login.php");
			break;
	}
?>