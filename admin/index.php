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
<div class="panel panel-default">
    <div class="panel-heading">
        <i class="glyphicon glyphicon-comment"></i><h1>系统摘要信息</h1>
    </div>
    <div class="panel-body">
        <h2 class="text-center">MySQL</h2>
        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <thead>
                        <tr>
                            <th>项目名称</th>
                            <th>项目属性</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="odd gradeX">
                            <td>版本</td>
                            <td>
                                <?php 
                                    $conn = new mysqli(DB_HOST, DB_USER, DB_PWD);
                                    $conn->query("set names utf8");
                                    $sql = "select @@version";
                                    $row = $conn->query($sql)->fetch_assoc();
                                    echo $row['@@version'];
                                 ?>
                            </td>
                        </tr>
                        <tr class="even gradeC">
                            <td>字符集</td>
                            <td>
                                <?php 
                                    $sql = "select @@character_set_connection";
                                    $row = $conn->query($sql)->fetch_assoc();
                                    echo $row['@@character_set_connection'];
                                 ?>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                错误日志信息
                            </td>
                            <td>
                                <?php 
                                    $sql = "select @@log_error";
                                    $row = $conn->query($sql)->fetch_assoc();
                                    echo $row['@@log_error'];
                                 ?>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                IP地址
                            </td>
                            <td>
                                <?php 
                                    $sql = "select @@bind_address";
                                    $row = $conn->query($sql)->fetch_assoc();
                                    echo $row['@@bind_address'];
                                 ?>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                默认存储引擎
                            </td>
                            <td>
                                <?php 
                                    $sql = "select @@default_storage_engine";
                                    $row = $conn->query($sql)->fetch_assoc();
                                    echo $row['@@default_storage_engine'];
                                 ?>
                            </td>
                        </tr>


                        <tr>
                            <td>
                                主机名
                            </td>
                            <td>
                                <?php 
                                    $sql = "select @@hostname";
                                    $row = $conn->query($sql)->fetch_assoc();
                                    echo $row['@@hostname'];
                                 ?>
                            </td>
                        </tr>


                        <tr>
                            <td>
                                编译系统版本
                            </td>
                            <td>
                                <?php 
                                    $sql = "select @@version_compile_os";
                                    $row = $conn->query($sql)->fetch_assoc();
                                    echo $row['@@version_compile_os'];
                                 ?>
                            </td>
                        </tr>
                </tbody>
        </table>
        
        <h2 class="text-center text-uppercase">php</h2>
        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <thead>
                        <tr>
                            <th>项目名称</th>
                            <th>项目属性</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="odd gradeX">
                            <td>版本</td>
                            <td>
                                <?php 
                                    echo phpversion();
                                 ?>
                            </td>
                        </tr>
                        <tr class="even gradeC">
                            <td>PHP运行环境系统</td>
                            <td>
                                <?php 
                                    echo PHP_OS;
                                 ?>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                错误日志信息
                            </td>
                            <td>
                                <?php 
                                    echo PHP_CONFIG_FILE_PATH;
                                 ?>
                            </td>
                        </tr>
                </tbody>
        </table>


    </div>
    <div class="panel-footer text-center">
        登陆系统的时间:&nbsp;
        <?php 
            echo $_SESSION['loginTime'];
         ?>
    </div>
</div>
</main>
