addEventListener("load", function() {
	setTimeout(hideURLbar, 0);
}, false);
function hideURLbar() {
	window.scrollTo(0, 1);
}
// 2019年3月5日08:51:07 @author:hjc
// 编写就绪函数
$(function() {
	// 注册功能
	// 注册账号
	$(".register").on("click", function() {
		// 500px,580px
		popWin.showWin("500", "580", "用户信息注册", "register.jsp");
	});
})

