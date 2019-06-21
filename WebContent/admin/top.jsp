<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>顶部</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body style="background: url('images/top3.jpg');background-repeat:no-repeat;background-size:100% 100%;">
	<div>
		<h1
			style="color: white; text-align: center; vertical-align: middle; margin-top: 2%;">天狗商城后台管理系统</h1>
	</div>
	<span style="float: right;"> <span
		style="color: white; font-size: bold; margin-right: 50px;"><b>
				尊敬的【${userName}游客】欢迎使用！ [<a href="#" onclick="comOnURL()">退出</a>]
		</b> </span>

	</span>
</body>
<script type="text/javascript">
	function comOnURL() {
		parent.location.href = "projectServlet?method=exit";
	}
</script>
</html>
