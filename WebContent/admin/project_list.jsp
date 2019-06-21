<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>商品列表</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="admin/css/tab.css">
<link rel="stylesheet" type="text/css" href="admin/css/button.css">
<script type="text/javascript" src="admin/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="admin/js/popwin.js"></script>

</head>
<body>
	<div>
	<form action="/xinxi/plike" method="get">
		<table class="imagetable" style="width: 100%; margin: 15px 10px;">
			<tr>
				<td><input type="button" onclick="clickThis()" value="录入商品信息"
					style="margin-left: 10px;" /><br /> 
					商品名称：<input type="text"
					 name="project_name" /> 
					商品描述：<input type="text"
					  name="project_desc" />
					商品状态：<select id="project_status" name="project_status">
						<option value="">请选择</option>
						<option value="1">已备案</option>
						<option value="2">未申请</option>
						</select> 
					商品类型： <select id="project_type" name="project_type">
						<option value="">请选择</option>
						<option value="工业">工业</option>
						<option value="农业">农业</option>
						<option value="畜牧业">畜牧业</option>
						<option value="制造业">制造业</option>
						<option value="房地产">房地产</option>
				         </select>
				 <input type="submit" value="查询" style="margin-left: 10px;" /></td>
			</tr>
		</table>
	</form>
	</div>
	<table class="imagetable"
		style="width: 100%; margin: 15px 10px; text-align: center;">
		<tr>
			<th>商品id</th>
			<th>商品标题</th>
			<th>商品原价格 </th>
			<th>商品现价格</th>
			<th>商品编号</th>
			<th>商品信息</th>
			<th>售出数量</th>
			<th>商品图片</th>
			<th>操作</th>
		</tr>
	  <!--  jstl 语法  ：      if    for      变量     重新 设置了一次  -->
		<!-- EL表达式       ${key}     通过  key   获取  value时候 用的    -->
		<!-- items 获取  request 域  中 的   key  得到  value  -->
		
		
	<!--var  相当于   在 for循环 遍历的时候，  把  每一条 数据   都放到 var 变量  -->
		
		<c:forEach items="${productList}"  var="project">
			<tr>
				<td>${project.id}</td>
				<td>${project.title}</td>
				<td>${project.oldMoney}</td>
				<td>${project.money}</td>
				<td>${project.goodNumber}</td>
				<td>${project.goodIntroduction}</td>
				<td>${project.sellNumber}</td>
			    <td><img src="${project.images}" with="100px" height="100px"></td>
				<td><input type="button" value="编辑"
					onclick="fn_update('${ project.id}')" /> 
					<input type="button" value="删除"
					onclick="fn_delete('${project.id}')" /></td>
			</tr>
		</c:forEach>
	</table>

	<script type="text/javascript">
		/* 删除商品信息 */
		function fn_delete(projectId) {
			if (confirm("是否要删除商品信息?")) {
				$.ajax({
					url : "/tgou/delproduct",
					type : "get",
					dataType : "json",
					data : {
						"projectId" : projectId
					},
					success : function(data) {
						if (data.keys == 1) {
							alert("删除成功!");
							location.reload();// 刷新数据
						} else {
							alert("删除失败!");
						}
					},
					error : function() {
						alert("ajax参数错误!");
					}
				});

			} else {
				alert("取消删除");
			}
		}

		/* 编辑 */
		function fn_update(projectId) { // 回显数据
			location.href = "editpro?projectId=" + projectId;
		}
		// 弹出商品信息表单
		function clickThis() {
			window.location.href = "admin/project.jsp";
		}
		

	</script>
</body>
</html>
