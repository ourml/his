<?php 
    require_once '../include.php';

    checkLogined();

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="styles/bootstrap.css">
	<link rel="stylesheet" href="styles/dashboard.css">
	<script src="scripts/formCheck.js"></script>

	<title>医院门诊信息管理系统</title>
</head>
<body>
	<nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
	  <button class="navbar-toggler navbar-toggler-right hidden-lg-up" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="navbar-toggler-icon"></span>
	      </button>
	  <a class="navbar-brand" href="index.php">医院门诊信息管理系统</a>

	  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
	    <ul class="navbar-nav mr-auto">
	    </ul>
	    <a href="logout.php" class="btn btn-outline-success my-2 my-sm-0">注销</a>
	  </div>
	</nav>

	<div class="container-fluid">
	  <div class="row">
	    <nav class="col-sm-3 col-md-2 hidden-xs-down bg-faded sidebar">
	      <div class="row">
	        <div class="col-sm-12 text-center text-success">
	          欢迎你&nbsp;&nbsp;
	          <?php 
	          	echo $_SESSION['adminName'];
	           ?>
	        </div>
	      </div>
	      
	      <ul class="nav nav-pills flex-column">
	        <li class="nav-item text-center">
	          <a class="nav-link" href="#">管理员管理 <span class="sr-only">(current)</span></a>
	        </li>
	        <li class="nav-item text-center">
	          <a class="nav-link" href="addAdmin.php">添加</a>
	        </li>
	        <li class="nav-item text-center">
	          <a class="nav-link" href="deleteAdmin.php">删除</a>
	        </li>
	        <li class="nav-item text-center">
	          <a class="nav-link" href="updateAdmin.php">更新</a>
	        </li>
	        <li class="nav-item text-center">
	          <a class="nav-link" href="listAdmin.php">查看</a>
	        </li>

	      </ul>
	      <ul class="nav nav-pills flex-column">
	        <li class="nav-item text-center">
	          <a class="nav-link" href="logout.php">注销</a>
	        </li>
	      </ul>
	    </nav>
	  </div>
	</div>	
