<?php 
    require_once '../include.php';

    checkLogined();

?>
<?php 
	require_once 'header-sider.php';
 ?>
 
<main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
	<h1>管理员管理</h1>

	<section class="row text-center placeholders">
	 <div class="col-6 col-sm-3 placeholder">
	   <a href="addAdmin.php" class="btn btn-info btn-block" role="button">
	   	添加
	   </a>
	 </div>
	 <div class="col-6 col-sm-3 placeholder">
	   <a href="deleteAdmin.php" class="btn btn-danger btn-block" role="button">
	   	删除
	   </a>
	 </div>
	 <div class="col-6 col-sm-3 placeholder">
	   <a href="updateAdmin.php" class="btn btn-primary btn-block" role="button">
	   	更新
	   </a>
	 </div>
	 <div class="col-6 col-sm-3 placeholder">
	   <a href="listAdmin.php" class="btn btn-success btn-block" role="button">
	   	查看
	   </a>
	 </div>
	</section>
</main>
<main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
<main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">

</main>
	<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
	  <thead>
	    <tr>
	      <th>员工编号</th>
	      <th>员工姓名</th>
	      <th>联系电话</th>
	      <th>联系邮箱</th>
	      <th>操作</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr class="odd gradeX"></tr>
	    <tr class="even gradeC"></tr>
	    <?php 
	    	$page = ($_GET['page']==null)?1:$_GET['page'];
	    	$numOfRow = 5;

	    	$sql = "select*from employee where e_id in (select a_e_id from admin)";
	    	$row = fetchAll($conn, $sql);
	    	$nums = getResultNum($conn, $sql);
	    	$totalPage = ceil($nums / 5);
	    	$startPage = ($page - 1) * $numOfRow;
	    	$sql = "select*from employee where e_id in (select a_e_id from admin) limit $startPage, $numOfRow";
	    	$row = fetchAll($conn, $sql);
	    	
	    	foreach ($row as $key => $value) {
	    		echo "<tr>";
	    		echo "<td>" . $value['e_id'] . "</td>";
	    		echo "<td>" . $value['e_name'] . "</td>";
	    		echo "<td>" . $value['e_tel'] . "</td>";
	    		echo "<td>" . $value['e_email'] . "</td>";
	    		echo "<td>" . '<a href="doUpdate.php?eid=' . $value['e_id'] . '" class="btn btn-primary btn-block col-sm-12" role="button">更新密码</a>' . "</td>";
	    		echo "</tr>";
	    	}
	     ?>
	  </tbody>
	</table>
</main>
<main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
	<?php 
		$str = showPage($page,$totalPage);
		echo $str;
	 ?>
</main>
