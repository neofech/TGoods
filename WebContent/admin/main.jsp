<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    
    <title>天狗后台系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
	<frameset rows="20%,*" cols="*" frameborder="yes" border="2" framespacing="1">
		<frame noresize="noresize" src="top.jsp" name="top">
		<frameset cols="12%,*">
			<frame noresize="noresize" src="left.jsp" scrolling="no" name="left">
			<frame width="100%" height="100%" noresize="noresize" src="project_list_map.jsp" scrolling="auto" name="right">
			<noframes>
				<body>
					<p>对不起，您的浏览器不支持“框架”！</p>
				</body>
			</noframes>
		</frameset>
	</frameset>
	<body>
	</body>
</html>
