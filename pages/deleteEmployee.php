<?php 
	require_once '../include.php';

	checkLogined();
 ?>
 <?php 
 	require_once 'header-sider.php';
  ?>
 <?php 
 	$sql = "select*from employee";
 	$nums = getResultNum($conn, $sql);

 	$page = ($_GET['page']==null)?1:$_GET['page'];

 	$numOfRow = 10;

 	$totalPage = ceil($nums / $numOfRow);
 	$startPage = ($page - 1) * $numOfRow;

 	$sql = "select*from employee limit $startPage,$numOfRow";
 	$rows = fetchAll($conn, $sql);

  ?>
<main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
	<h1 class="text-center">医院员工基本信息</h1>
</main>
<main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
	<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
	            <thead>
	                <tr>
	                    <th>编号</th>
	                    <th>姓名</th>
	                    <th>职称</th>
	                    <th>性别</th>
	                    <th>年龄</th>
	                    <th>联系电话</th>
	                    <th>联系邮箱</th>
	                </tr>
	            </thead>
	            <tbody>
	                <tr class="odd gradeX">
	                </tr>
	                <tr class="even gradeC">					
	                </tr>
	                <?php 
	                	$now = date('Y');
	                	foreach ($rows as $key => $value) {
	                		echo "<tr>";
	                		echo "<td>" . $value['e_id'] . "</td>";
	                		echo "<td>" . $value['e_name'] . "</td>";
	                		echo "<td>" . $value['e_title'] . "</td>";
	                		echo "<td>" . ($value['e_sex']==1?'女':'男') . "</td>";
	                		echo "<td>" . ($now - substr($value['e_birthday'],0,4)) . "</td>";
	                		echo "<td>" . $value['e_tel'] . "</td>";
	                		echo "<td>" . $value['e_email'] . "</td>";
	                		echo "</tr>";
	                	}
	                 ?>
	        </tbody>
	</table>
</main>

<main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
	<main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
		<?php 
			$str = showPage($page,$totalPage);
			echo $str;
		 ?>
	</main>
</main>