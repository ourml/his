<?php 
	require_once '../include.php';

	checkLogined();
 ?>
 <?php 
 	require_once 'header-sider.php';
  ?>
<main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
	<h1 class="text-center">医院员工基本信息</h1>
</main>

<main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
	<?php 
		require_once 'list.php';
	 ?>
</main>
