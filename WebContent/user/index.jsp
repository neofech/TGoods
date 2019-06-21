<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>天狗_综合商城</title>
</head>
<link rel="stylesheet" type="text/css" href="css/productList.css" />
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript" src="js/index.js"></script>

<body>
	<!-- 导入头部 -->
	<%@ include file="common_top.jsp"%>
	<!--SubPageMenu-->
	<div id="commonMenu"></div>
	<div id="ListCenter">
		<%@ include file="leftbox.jsp"%>
		<div class="rightBox">
			<div class="ad">
				<a href="#"><img src="img/test/9.png" /> </a>
			</div>
			<div class="sequence">
				<span>&nbsp;&nbsp;排序方式:</span> <a href="javascript:void(0)"
					class="ative" id="moren">默认</a> <a href="javascript:void(0)">畅销商品</a>
				<a href="javascript:void(0)">新品上架</a> <a href="javascript:void(0)"
					id="up">价格从高到低</a> <a href="javascript:void(0)" id="down">价格从低到高</a>
			</div>

			<div id="goods"></div>

			<div class="next">
				一共<span>323</span>条记录，当前第<span>1</span>页，共<span>30</span>页<a
					href="#">上一页</a><a href="#">下一页</a>
			</div>

			<div id="model" style="display:none">
				<div class="product" id="$id$" >
					<dl>
						<dt>
							<a><img style="width:100%; height:100%" src="$img$" /></a><span></span>
						</dt>
						<dd>
							<del>市场价：$oldMoney$</del>
							元
						</dd>
						<dd>
							<b>$money$</b>元
						</dd>
						<dd>
							<a href=$href$>$title$</a>
						</dd>
						<dd>
							<span>累计售出$count$件</span>
						</dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
	<!-- 导入脚部 -->
	<%@ include file="common_bottom.jsp"%>
</body>
</html>
