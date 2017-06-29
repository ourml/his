<!DOCTYPE html>
<!--[if lte IE 9]>
<html class="ie" lang="en">
<![endif]-->
<!--[if gt IE 9]><!-->
<html lang="en" class="no-js cookie_used_true">
<!--<![endif]-->
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../styles/bootstrap.css">
<script type="text/javascript">
  function check(formName) {
    var val1 = document.forms[formName].account.value;
    var val2 = document.forms[formName].pwd.value;
    var val3 = document.forms[formName].verify.value;
    if (val1.replace(/\s+/, "") == "" || val2.replace(/\s+/, "") == "" || val3.replace(/\s+/, "") == "") {
      alert("选项不能为空");
      return false;
    } else {
      return true;
    }
  }
</script>

<title>医院门诊信息管理系统后台登陆</title>
</head>
<body>
<div class="container">
  <h2 class="text-center">医院门诊信息管理系统</h2>
  <div class="jumbotron">
    <div class="row">
      <div class="col-sm-8">
        <img src="../images/Fresh_deskTX_1920-1200.JPG" alt="医院门诊信息管理系统" class="img-thumbnail" />
      </div>
      <div class="col-sm-4">
        <h2 class="text-center">管理员登陆</h2>
        <form class="form-horizontal" action="doLogin.php" method="post" onsubmit = "return check(this.name)" name="loginForm">
          <div class="form-group">
            <label class="control-label col-sm-4" for="account">账号:</label>
            <div class="col-sm-12">
              <input type="text" class="form-control" id="account" placeholder="编号" name="account" required />
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-4" for="pwd">密码:</label>
            <div class="col-sm-12">          
              <input type="password" class="form-control" id="pwd" placeholder="密码" name="pwd" required />
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-4" for="verify">验证码:</label>
            <div class="col-sm-12">
            	<div class="row">
            		<div class="col-sm-6">
            			<input type="text" class="form-control" id="verify" name="verify" required />
            		</div>
            		<div class="col-sm-6">
                  <a href="#" title="点击刷新">
                  <img src="getVerify.php" alt="验证码" onclick="this.src='getVerify.php?tm=' + Math.random()" />
                  </a>
            		</div>
            	</div>
            </div>
          </div>
          <div class="form-group">        
            <div class="col-sm-offset-2 col-sm-12">
              <button type="submit" class="btn btn-success btn-block">登陆</button>
            </div>
          </div>
        </form>

      </div>
    </div>
  </div>
</div>

</body>
</html>