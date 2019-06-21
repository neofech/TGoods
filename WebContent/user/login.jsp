<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>登录_综合商城</title>
</head>
<link rel="stylesheet" type="text/css" href="css/login.css" />
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<body>
	<!-- 导入头部 -->
	<%@ include file="common_top.jsp"%>
	<!---->
	<div id="aa"></div>
	<!--login-->
	<div class="login">
		<div class="loginLeft">
			<form action="" method="post" name="form1" class="form1">
				<legend>
					&nbsp;&nbsp;&nbsp;新用户，请注册<span class="red2">(仅需30秒)</span>
				</legend>
				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email:<input
					type="text" value="" class="email" id="email" /><span
					id="emailHint">请输入邮箱</span> </label><br /> <label>&nbsp;&nbsp;&nbsp;&nbsp;用户名:<input
					type="text" value="" class="username" id="account" /><span>4-20英文字符,数字,'_'的组合</span>
				</label><br /> <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码:<input
					type="password" value="" class="pw" id="password" /><span>请输入密码</span>
				</label><br /> <label>&nbsp;&nbsp;确认密码:<input type="password"
					value="" class="cpw" id="repassword" /><span>请输入重复密码</span> </label><br />
				<label>&nbsp;&nbsp;&nbsp;&nbsp;验证码:</label><input type="text"
					value="" class="verification" id="inputVerifyCode" /><br />
			</form>
			<div class="register">
				<a href="javascript:void(0)" onclick="register()">注册</a>
			</div>
			<span class="verificationBox" id="verifyCode"> <%
 	int verifyCode = new Random().nextInt(10000);
 	out.print(verifyCode);
 %> </span>
		</div>
		<div class="loginRight">
			<form action="" method="post" name="form2" class="form2">
				<legend>&nbsp;&nbsp;&nbsp;老用户，请登录</legend>
				<label>&nbsp;&nbsp;&nbsp;&nbsp;用户名:<input type="text"
					value="" class="myName" id="accountLogin" /> </label><br /> <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码:<input
					type="password" value="" class="myPwd" id="passWordLogin" /> </label><a
					href="javascript:void(0)">忘记密码？</a><br />
			</form>
			<div class="myRegister">
				<a href="javascript:void(0)" onclick="login()">我要登录</a>
			</div>
		</div>
	</div>
	<!-- 导入脚部 -->
	<%@ include file="common_bottom.jsp"%>
</body>
</html>
