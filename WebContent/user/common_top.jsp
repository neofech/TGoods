<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>天狗商城_天狗商城</title>
</head>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<body>
	<!--topHeader-->
	<div class="topHeader">
		<div id="shoppingCart" class="t_menu">
			<div class="hello">
				您好：<span></span>欢迎光临天狗商城! [ <a href="login.jsp" class="deng">请登录</a>
				<a href="login.jsp" class="tui">退出!</a> ],新用户？ [ <a href="login.jsp"
					class="zhuce">免费注册</a> <a href="#" class="guan">用户管理</a> ]
			</div>
			<div class="shop">
				<span class="shoppingcart"> <a href="myShopping.html">购物车<span
						class="red1">0</span>件</a> </span> <a class="sub" href="javascript:void(0)">我的订单</a>|
				<a class="sub" href="javascript:void(0)">网站地图</a>| <a class="sub"
					href="javascript:void(0)">帮助中心</a>| <a class="sub"
					href="javascript:void(0)">加入收藏</a>| <a class="sub"
					href="javascript:void(0)">设为首页</a>
			</div>
		</div>
	</div>
	<!--top-->
	<div class="top">
		<div id="header" class="header">
			<a class="logo" href="javascript:void(0)"></a>
			<div class="searchBox">
				<input id="searchBox" type="text" value="多搜搜，意外惊喜等你拿" />
				<p class="search_commodity">商品</p>
				<p class="seach_hot">
					<a href="javascript:void(0)">手机</a>/ <a href="javascript:void(0)">钟表</a>/
					<a href="javascript:void(0)">家电</a>/ <a href="javascript:void(0)">电脑</a>/
					<a href="javascript:void(0)">男装</a>/ <a href="javascript:void(0)">女装</a>/
					<a href="javascript:void(0)">灯具</a>/ <a href="javascript:void(0)">童装</a>/
					<a href="javascript:void(0)">儿童玩具</a>/ <a href="javascript:void(0)">笔记本</a>/
					<a href="javascript:void(0)">平板</a>/ <a href="javascript:void(0)">相机</a>/
					<a href="javascript:void(0)">鞋</a>
				</p>
			</div>
			<a class="seach" id="seach" href="javascript:void(0)">搜索</a>
		</div>
	</div>
	<!--topNav-->
	<div class="topNav">
		<div class="topNav_menu">
			<a href="javascript:void(0)" id="commodityList">所有商品分类</a>
			<ul class="topNavList">
				<li><a href="index.jsp">首页</a></li>
				<li><img src="img/test/topNavLi.png" /></li>
				<li><a href="#">手机数码</a></li>
				<li><img src="img/test/topNavLi.png" /></li>
				<li><a href="#">礼品箱包</a></li>
				<li><img src="img/test/topNavLi.png" /></li>
				<li><a href="#">厨具用品</a></li>
				<li><img src="img/test/topNavLi.png" /></li>
				<li><a href="#">名牌手表</a></li>
				<li><img src="img/test/topNavLi.png" /></li>
				<li><a href="#">服饰鞋帽</a></li>
				<li><img src="img/test/topNavLi.png" /></li>
				<li><a href="#">个护化妆</a></li>
				<li><img src="img/test/topNavLi.png" /></li>
				<li><a href="#">母婴用品</a></li>
				<li><img src="img/test/topNavLi.png" /></li>
			</ul>
			<div class="topNav_hot">
				<a href="javascript:void(0)">分享</a> <a href="javascript:void(0)">导航</a>
				<a href="javascript:void(0)">团购</a> <a href="javascript:void(0)">充值</a>
				<div class="new"></div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function getCookie(name) {
			var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
			if (arr = document.cookie.match(reg))
				return unescape(arr[2]);
			else
				return null;
		}
		var cookie = getCookie("login_state");
		if (cookie != null) {
			var tui = document.getElementsByClassName("tui")[0];
			var zhuce = document.getElementsByClassName("zhuce")[0];
			var deng = document.getElementsByClassName("deng")[0];
			var guan = document.getElementsByClassName("guan")[0];
			tui.className = "";
			guan.className = "";
			zhuce.style.cssText = "display:none;";
			deng.style.cssText = "display:none;";
		}
	</script>
</body>
</html>
