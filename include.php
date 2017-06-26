<?php 
	session_start();
	header("content-type:text/html;charset=utf-8");
	date_default_timezone_set("PRC");

	require_once 'configs/configs.php';
	require_once 'lib/mysql.func.php';
	require_once 'lib/string.func.php';
	require_once 'lib/common.func.php';
	require_once 'lib/page.func.php';
	require_once 'lib/image.func.php';
	require_once 'core/admin.inc.php';