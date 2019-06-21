<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>天狗后台系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/popwin.js"></script>
<script type="text/javascript" src="js/login.js"></script>
</head>

<body>
	<h1>商品后台管理系统</h1>
	<div class="container w3">
		<form action="" id="project_form" method="post">
			<div class="userName">
				<span class="username" style="height: 19px">用户:</span> <input
					type="text" name="userName" class="name inputstyle">
				<div class="clear"></div>
			</div>
			<div class="password-agileits">
				<span class="username" style="height: 19px;">密码:</span> <input
					type="password" name="password" class="password inputstyle">
				<div class="clear"></div>
			</div>
			<div>
				<div class="login-w3">
					<input type="button" class="common_btn" onclick="login()"
						value="登录">
				</div>
				<div class="register-w3">
					<input type="button" class="register common_btn" value="注册账户">
				</div>
			</div>
			<div class="clear"></div>
		</form>
	</div>
	<div class="footer-w3l">
		<p>商品后天管理登录系统</p>
	</div>
</body>
<script type="text/javascript">
	function login() {
		// 首先绑定登录按钮的点击事件
		// 校验用户名密码不为null
		// 首先获取用户名的长度
		var name_text = $(".name").val();
		// 获取密码
		var password_text = $(".password").val();
		// 判断当前用户密码是否为null
		if (name_text.length <= 0) {
			alert("用户名不能为空");
			// 得到文本框焦点
			$(".name").focus();
			return false;
		}
		if (password_text.length <= 0) {
			alert("密码不能为空");
			// 得到密码文本框的焦点
			$(".password").focus();
			return false;
		}

		// 执行数据提交
		$.ajax({
			url : "/tgou/adminlogin",
			
			data : {
				"name" : name_text,
				"password" : password_text
			}, // ajax提交后台的参数
			
			dataType : "json", // 后台响应的数据类型
		
			type : "post", // 提交方式
			
			success : function(data) { // 回调函数
				
				if (data.flag == "success") {
					// 主界面跳转
					window.location.href = "main.jsp";
				} else {
					alert("不存在的用户名@!");
				}
			},
			error : function() { // ajax参数校验函数
				alert("ajax参数校验异常!");
			}
		})
	}
</script>
</html>
