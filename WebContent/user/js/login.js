function register() {
		var email = document.getElementById("email").value;
		var account = document.getElementById("account").value;
		var passWord = document.getElementById("password").value;
		var rePassWord = document.getElementById("repassword").value;
		var inputVerifyCode = document.getElementById("inputVerifyCode").value;
		// innerText 获取标签中的文本
		var verifyCode = document.getElementById("verifyCode").innerText;
		if (email == "") {
			alert("邮箱不能为空!");
			return;
		} else if (account == "") {
			alert("用户名不能为空!");
			return;
		} else if (passWord == "" || rePassWord == "") {
			alert("密码不能为空!");
			return;
		} else if (inputVerifyCode == "") {
			alert("请输入验证码!");
			return;
		} else if (passWord != rePassWord) {
			alert("两次密码不一致!");
			document.getElementById("repassword").value = "";
			return;
		} else if (inputVerifyCode != verifyCode) {
			alert("验证码错误!");
			document.getElementById("inputVerifyCode").value = "";
			return;
		}
		ajax("post", "http://localhost:8080/tgou/userregister", "email="
				+ email + "&account=" + account + "&password=" + passWord,
				function(result) {
					// succeed
					initData(result);
				}, function() {
					// failed

				});
		function initData(result) {
			//假设已经知道了json的长度,用len表示
			var content = JSON.parse(result);
			if (content.resultCode == 0) {
				alert(content.message);
			}
			window.open("index.jsp");
		}
	}

	function login() {
		var account = document.getElementById("accountLogin").value;
		var passWord = document.getElementById("passWordLogin").value;
		if (account == "") {
			alert("用户名不能为空!");
			return;
		} else if (passWord == "") {
			alert("密码不能为空!");
			return;
		}

		ajax("post", "http://localhost:8080/tgou/userlogin", "account="
				+ account + "&password=" + passWord, function(result) {
			// succeed
			initData(result);
		}, function() {
			// failed
		});

		function initData(result) {
			//假设已经知道了json的长度,用len表示
			var content = JSON.parse(result);
			if (content.resultCode == 0) {
				alert(content.message);
				return;
			}
			window.open("index.jsp");
		}

		function addCookie(name, value, expiresHours) {
			var cookieString = name + "=" + escape(value);
			//判断是否设置过期时间,0代表关闭浏览器时失效  
			if (expiresHours > 0) {
				var date = new Date();
				date.setTime(date.getTime + expiresHours * 3600 * 1000);
				cookieString = cookieString + "; expires=" + date.toGMTString();
			}
			document.cookie = cookieString;
		}
	}