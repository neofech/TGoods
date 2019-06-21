<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>左边部分</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="左边导航">
	<link rel="stylesheet" type="text/css" href="css/iconfont.css">
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="js/left.js"></script>
	<style type="text/css">
		body{margin:0;padding:0;overflow-x:hidden;}
		html, body{height:100%;}
		img{border:none;}
		*{font-family:'微软雅黑';font-size:12px;color:#626262;}
		dl,dt,dd{display:block;margin:0;}
		a{text-decoration:none;font-size:14px;}
		
		#bg{background-image:url(images/content/dotted.png);}
		.container{width:100%;height:100%;margin:auto;}
		
		/*left*/
		.leftsidebar_box{width:185px;height:auto !important;overflow:visible !important;position:fixed;height:100% !important;}
		.line{height:2px;width:100%;background-image:url(images/left/line_bg.png);background-repeat:repeat-x;}
		.leftsidebar_box dt{padding-left:58px;padding-right:10px;background-repeat:no-repeat;background-position:10px center;color:#f5f5f5;font-size:14px;position:relative;line-height:48px;cursor:pointer;}
		.leftsidebar_box dd{background-color:black;padding-left:40px;}
		.leftsidebar_box dd a{color:#f5f5f5;line-height:20px;}
		.leftsidebar_box dt img{position:absolute;right:10px;top:20px;}
		.system_log dt{background-image:url(images/left/system.png)}
		.custom dt{background-image:url(images/left/custom.png)}
		.channel dt{background-image:url(images/left/channel.png)}
		.app dt{background-image:url(images/left/app.png)}
		.cloud dt{background-image:url(images/left/cloud.png)}
		.syetem_management dt{background-image:url(images/left/syetem_management.png)}
		.source dt{background-image:url(images/left/source.png)}
		.statistics dt{background-image:url(images/left/statistics.png)}
		.leftsidebar_box dl dd:last-child{padding-bottom:10px;}
	</style>
  </head>
  
  <body id="bg">
	<div class="container">

		<div class="leftsidebar_box">
			<div class="line"></div>
			<dl class="custom">
				<dt>
					项目管理<img src="images/left/select_xl01.png">
				</dt>
				<dd class="first_dd" style="height:10px;">
					<a target="right" href="/tgou/showpro">项目信息列表</a>
				</dd>
			</dl>
			<dl class="statistics">
				<dt>
					统计分析<img src="images/left/select_xl01.png">
				</dt>
				<dd class="first_dd">
					<a target="right" href="project_list_map.jsp">数据迁移分析趋向图</a>
				</dd>
			</dl>
			<dl class="system_log">
				<dt onClick="changeImage()">
					系统记录<img src="images/left/select_xl01.png">
				</dt>
				<dd class="first_dd">
					<a href="#">充值记录</a>
				</dd>
				<dd>
					<a href="#">短信充值记录</a>
				</dd>
				<dd>
					<a href="#">消费记录</a>
				</dd>
				<dd>
					<a href="#">操作记录</a>
				</dd>
			</dl>
		</div>
	</div>
</body>
</html>
