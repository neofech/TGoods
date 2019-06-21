<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>商品登记</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/form.css">
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	
  </head>
	<body>
	<form action="/tgou/addpro" method="post" class="basic-grey" enctype="multipart/form-data">
		<label> 
			<span>商品标题：</span><input id="title" type="text" name="title" placeholder="请输入商品标题" /><br/>
		</label> 
		<label> 
			<span>商品原价格 ：</span>
			<input id="oldMoney" type="text" name="oldMoney" placeholder="请输入商品原价格 " /><br/>
		</label> 
		<label> 
			<span>商品现价格 ：</span>
			<input id="money" type="text" name="money" placeholder="商品现价格" /><br/>
		</label> 
		<label> 
			<span>商品编号 ：</span>
			<input id="goodNumber" type="text" name="goodNumber" placeholder="请输入商品编号" /><br/>
		</label> 
		<label> 
			<span>商品信息 ：</span>
			<input id="goodIntroduction" type="text" name="goodIntroduction" placeholder="请输入商品信息" /><br/>
		</label> 
		<label> 
			<span>售出数量</span>
			<input id="sellNumber" type="text" name="sellNumber" placeholder="请输入商品售出数量" /><br/>
		</label> 
		<label> 
			<span>商品图片</span> 
			<input id="images" name="images" type="file" /><br>
		</label> 
		<label> 
			<span>&nbsp;</span> 
			<input type="submit"  value="保存" />
			
		</label>
	</form>
	<script type="text/javascript">
	/* $(function() {
		// 弹出商品信息表单
		$(".writerInfo").on("click", function() {
			popWin.showWin("500", "400", "商品信息录入", "project.jsp");
		});
		// 绑定保存按钮的点击事件
		$(".save").on("click",function(){
			// 校验数据 id选择器
			var project_name = $("#project_name").val(); // 商品名称
			var project_type = $("#project_type").val(); // 商品类型
			var project_status = $("#project_status").val(); // 商品状态
			var project_desc = $("#project_desc").val(); // 商品描述--获取文本内容
			var project_file = $("#project_file").val(); // 商品描述--获取文本内容
			if(project_name.length<=0) {
				alert("商品名称不能为空");
				$("#project_name").focus();
				return false;
			}
			if(project_type.length<=0) {
				alert("请选择商品类型");
				$("#project_type").focus();
				return false;
			}
			if(project_status.length<=0) {
				alert("请选择商品状态");
				$("#project_status").focus();
				return false;
			}
			if(project_desc.length<=0) {
				alert("商品描述不能为空");
				$("#project_desc").focus();
				return false;
			}
			
			// 数据提交后台
			$.ajax({
				url:"/xinxi2/addproduct",  // 请求后台的地址
				type:"get",
				data:{
					"project_name":project_name,
					"project_type":project_type,
					"project_status":project_status,
					"project_desc":project_desc,
					"project_file":project_file
				},
				dataType:"json",
				success:function(data){
					if(data.status=='1') {
						window.location.href = "product";
						window.close();
					} else {
						alert("商品信息录入失败!");
					}
				},
				error:function(){
					alert("ajax参数校验异常!");
				}
			})
		});

		
	}); */
	</script>
</body>
</html>
