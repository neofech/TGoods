<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title>商品信息修改页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="admin/css/form.css">
	<script type="text/javascript" src="admin/js/jquery-1.8.3.js"></script>
	<style>
		.basic-grey {
			margin-top: 120px;
		}
	</style>
	<script type="text/javascript">
		$(function(){
			$("#back_list").on("click",function(){
				location.href = "project";
			});
			
			// 修改保存
			$("#save").on("click",function(){
				var projectId = $("#project_id").val();
				var projectName =$("#project_name").val();
				var projectType=$("#project_type").val();
				var projectStatus=$("#projectStatus").val();
				if(projectStatus != 1 && projectStatus != 2 ){
					
					alert("状态码 只能是1/2");
					return ;
				}
				
				var projectDesc=$("#project_desc").val();
				$.ajax({
					url:"update",
					type:"get",
					data:{
						"projectId":projectId,
						"projectName":projectName,
						"projectType":projectType,
						"projectStatus":projectStatus,
						"projectDesc":projectDesc
					},
					dataType:"json",
					success:function(data){
						
						if (data.success== 1) {
							alert("修改成功!");
							location.href = "product";
						} else {
							alert("修改失败!");
						};
					},
					error:function(title){
						alert("ajax参数错误!");
					}
				});
			});
		});
	</script>
  </head>
	<body style="background-color:black;">
	<form action="/tgou/updatepro" method="post" class="basic-grey" enctype="multipart/form-data">
		<input id="id" type="hidden" name="id" value="${producetList.id}"></br>
		<label> 
			<span>商品标题：</span><input id="title" type="text" name="title"  value="${producetList.title}" /><br/>
		</label> 
		<label> 
			<span>商品原价格 ：</span>
			<input id="oldMoney" type="text" name="oldMoney" value="${producetList.oldMoney} " /><br/>
		</label> 
		<label> 
			<span>商品现价格 ：</span>
			<input id="money" type="text" name="money" value="${producetList.money}" /><br/>
		</label> 
		<label> 
			<span>商品编号 ：</span>
			<input id="goodNumber" type="text" name="goodNumber" value="${producetList.goodNumber}" /><br/>
		</label> 
		<label> 
			<span>商品信息 ：</span>
			<input id="goodIntroduction" type="text" name="goodIntroduction" value="${producetList.goodIntroduction}" /><br/>
		</label> 

		
		<label> 
			<span>售出数量</span>
			<input id="sellNumber" type="text" name="sellNumber" value="${producetList.sellNumber}" /><br/>
		</label> 
		<label> 
			<span>商品图片</span> 
		  <img  alt="" width="100px" src="${producetList.images}"><br>
		</label> 
		
		<label> 
		<span>更新图片</span> 
			<input id="images" name="images" type="file"  /><br>
		</label> 
		<label> 
			<span>&nbsp;</span> 
			<input type="submit"  value="保存" />
		</label>
	</form>
</body>
</html>
