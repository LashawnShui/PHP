<?php
session_start();
require 'include/globle.inc.php';
if($_SESSION['m_name']<>""){
	header("Location:xycms.php");
	exit;
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style/admin.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div id="m_top"></div>
<div id="login">
  <div class="l_l">
    <div class="l_l_c">
      <div class="l_l_c_t">
        欢迎您选择使用XYCMS作品。我们致力为用户提供最优秀的网站建设解决方案及相关咨询服务，全心全意提供令客户满意的产品和服务。
      </div>
    </div>
  </div>
  <div class="l_c">
    <img src="images/l_line.gif" />
  </div>
  <div class="l_r">
    <div class="l_r_form">
      <form name="login" method="post" action="loginpass.php" onSubmit="return checkform();">
      <table cellpadding="5" cellspacing="10" class="l_table">
        <tr>
          <td class="td1"><span>登录账号：</span></td>
          <td><input type="text" name="admin" class="u_input" onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='u_input';this.onmouseout=function(){this.className='u_input'};" onmousemove="this.className='input_on'" onmouseout="this.className='u_input'" /></td>
        </tr>
        <tr>
          <td class="td1"><span>登录密码：</span></td>
          <td><input type="password" name="password" class="u_input" onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='u_input';this.onmouseout=function(){this.className='u_input'};" onmousemove="this.className='input_on'" onmouseout="this.className='u_input'" /></td>
        </tr>
        <tr>
          <td class="td1"><span>验证码：</span></td>
          <td class="td4"><input type="text" name="checkcode" class="log_yzm" /> <img src="code.php?act=yes" align="middle"></td>
        </tr>
        <tr>
          <td colspan="2" class="td2"><input type="submit" value="提交" class="u_button" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重填" class="u_button" /></td>
        </tr>
        <tr>
          <td colspan="2" class="td3">友情提示：非网站管理员自觉离开此页面</td>
        </tr>
      </table>
      </form>
    </div>
  </div>
  <div class="clear"></div>
</div>
<div id="copy">
  <div class="copy"><a href="http://www.jsxyidc.com/" target="_blank">江苏鑫跃科技</a> Copyright &copy; 2015-2018 All Rights Reserved</div>
</div>
</body>
</html>