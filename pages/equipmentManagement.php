<?php 
	require_once '../include.php';

	checkLogined();
 ?>
 <?php 
 	require_once 'header-sider.php';
  ?>
<main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
	<h1>设备管理</h1>

	<section class="row text-center placeholders">
	 <div class="col-6 col-sm-3 placeholder">
	   <a href="#" class="btn btn-info btn-block" role="button">
	   	添加
	   </a>
	 </div>
	 <div class="col-6 col-sm-3 placeholder">
	   <a href="#" class="btn btn-danger btn-block" role="button">
	   	删除
	   </a>
	 </div>
	 <div class="col-6 col-sm-3 placeholder">
	   <a href="#" class="btn btn-primary btn-block" role="button">
	   	更新
	   </a>
	 </div>
	 <div class="col-6 col-sm-3 placeholder">
	   <a href="#" class="btn btn-success btn-block" role="button">
	   	查看
	   </a>
	 </div>
	</section>
</main>