<?php 
	require_once '../include.php';

	checkLogined();
 ?>
 <?php 
 	require_once 'header-sider.php';
  ?>
<main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
	<h1>药房管理</h1>

	<section class="row text-center placeholders">
	 <div class="col-6 col-sm-3 placeholder">
	   <a href="#" class="btn btn-info btn-block" role="button">
	   	药品添加
	   </a>
	 </div>
	 <div class="col-6 col-sm-3 placeholder">
	   <a href="#" class="btn btn-danger btn-block" role="button">
	   	药品删除
	   </a>
	 </div>
	 <div class="col-6 col-sm-3 placeholder">
	   <a href="#" class="btn btn-primary btn-block" role="button">
	   	药品信息更新
	   </a>
	 </div>
	 <div class="col-6 col-sm-3 placeholder">
	   <a href="#" class="btn btn-success btn-block" role="button">
	   	药品查看
	   </a>
	 </div>
	</section>
</main>