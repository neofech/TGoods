<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户信息注册页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="js/popwin.js"></script>
	<script type="text/javascript" src="js/register.js"></script>
  </head>
  <body>
	<div class="container w3">
		<form action="" method="post" id="registerForm">
			<span class="username" style="height:19px;">用户姓名:</span> <input
				type="text" name="user_name" id="user_name"
				class="userName inputstyle">
			<div class="clear"></div>
			<span class="username" style="height:19px;">账号:</span> <input
				type="text" name="account" id="account" class="userName inputstyle">
			<div class="clear"></div>
			<span class="password" style="height:19px;">密码:</span> <input
				type="password" name="register_password" class="password inputstyle"
				id="password">
			<div class="clear"></div>
			<span class="confimPassword" style="height:19px;">确认密码:</span> <input
				type="password" name="register_password"
				class="confimPassword inputstyle" id="confimPassword">
			<div class="clear"></div>
			<span class="mobblePhone" style="height:19px;">手机号码:</span> <input
				type="text" name="mobile_phone" id="moblie_phone"
				class="mobblePhone inputstyle">
			<div class="clear"></div>
			<div class="register-w3" style="width: 300px;">
				<input type="button" class="register common_btn" value="确定">
			</div>
		</form>
	</div>
</body>
</html>
