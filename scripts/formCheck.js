function check(formName) {
  var val1 = document.forms[formName].pwd.value;
  var val2 = document.forms[formName].pwd_check.value;
  if (val1.replace(/\s+/, "") == "" || val2.replace(/\s+/, "") == "") {
    alert("密码不能为空");
    return false;
  } else if (val1 !== val2) {
    alert("密码不一致");
    return false;
  } else {
    return true;
  }
}
