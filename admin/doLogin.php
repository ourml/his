<?php 
    require_once '../include.php';


	$account = $_POST['account'];
	$account = addslashes($account);
	$pwd = md5($_POST['pwd']);
	$verify = $_POST['verify'];

	$verify1 = $_SESSION['verify'];

	if (!strnatcasecmp($verify, $verify1)) {
		$sql = "select * from admin where a_id='{$account}' and a_pwd='{$pwd}'";
		$row = checkAdmin($conn, $sql);

		if ($row) {
			$_SESSION['adminId'] = $row['a_id'];
			$_SESSION['loginTime'] = Date('Y-m-d H:m:s');


			$sql = "select * from employee";
			$id = $row['a_e_id'];
			$row = fetchOne($conn, $sql, "e_id={$id}");
			$_SESSION['adminName'] = $row['e_name'];

			header("location:index.php");
		} else {
			alertMes("登陆失败，重新登陆", "login.php");
		}
	} else {
		alertMes("验证码错误", "login.php");
	}
	