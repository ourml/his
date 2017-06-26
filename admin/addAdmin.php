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
<div class="container">
  <h3 class="text-center">
      添加管理员
    </h3>
  <div class="jumbotron">

    <form action="doAction.php?act=add" method="post" onsubmit = "return check(this.name)" name="addAdminForm">
      <div class="form-group">
        <label for="sel1">管理员编号:</label>
        <select class="form-control" id="sel1" name="a_e_id">
              <?php 
              $sql = "SELECT * FROM `employee` ";
              $row = fetchAll($conn, $sql);
              if ($row) {
              	foreach ($row as $key => $value) {
              		echo "<option value='" . $value['e_id'] . "'>" . $value['e_id'] . "</option>";
              	}
              }
               ?>
            </select>
      </div>
      <div class="form-group">
        <label for="pwd">密&nbsp;&nbsp;码:</label>
        <input type="password" class="form-control" id="pwd" placeholder="密码" name="a_pwd" required />
      </div>
      <div class="form-group">
        <label for="pwdcheck">重复密码:</label>
        <input type="password" class="form-control" id="pwd_check" placeholder="重复密码" required />
      </div>
      <div class="form-group text-center">
        <button type="submit" class="btn btn-success col-sm-4">
          添加
        </button>
      </div>
    </form>
  </div>
</div>
</main>
