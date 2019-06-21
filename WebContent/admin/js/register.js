// 就绪函数
$(function(){
	// 给确定按钮绑定点击事件
	$(".register").on("click",function(){
		// 校验注册功能的提交参数
		var user_name = $("#user_name").val(); // 用户名
		var account = $("#account").val(); // 账号
		var password = $("#password").val(); // 密码
		var confim_ps = $("#confimPassword").val(); // 确认密码
		var phone = $("#moblie_phone").val(); // 联系方式
		// 数据的非空的校验
		if(user_name.length<=0) {
			alert("用户名不能为空!");
			// 得到焦点
			$("#user_name").focus();
			return false;
		}
		if(account.length<=0) {
			alert("账号不能为空!");
			$("#account").focus();
			return false;
		}
		if(password.length<=0) {
			alert("密码不能为空!");
			$("#password").focus();
			return false;
		}
		if(confim_ps.length<=0) {
			alert("确认密码不能为空!");
			$("#confimPassword").focus();
			return false;
		}
		// 判断两次密码一致
		if(password == confim_ps) {
			// 执行ajax添加
			$.ajax({
				url:"/tgou/registeradmin",
				type:"get",
				dataType:"json",
				data:{
					"userName":user_name,
					"account":account,
					"password":password,
					"phone":phone
				},
				success:function(data){
					
					if(data.success =='1') {
						alert("注册成功!");
						top.location.href = "index.jsp";
					}

					if(data.success =='0') {
						alert("注册失败!");
					}
				},
				error:function(){
					alert("ajax参数错误!");
				}
			});
			
		} else {
			alert("两次密码输入不一致!请重新输入!");
			return false;
		}
		if(phone.length<=0) {
			alert("手机号码不能为空!");
			$("#moblie_phone").focus();
			return false;
		}
	})
})