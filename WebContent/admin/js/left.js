$(function(){
	$(".leftsidebar_box").css({"background-color":"black"});
	$(".leftsidebar_box dt").css({"background-color":"black"});
	$(".leftsidebar_box dt img").attr("src","images/left/select_xl01.png");
	$(".leftsidebar_box dd").hide();
	$(".leftsidebar_box dt").click(function(){
		$(".leftsidebar_box dt").css({"background-color":"black"});
		$(this).css({"background-color": "black"});
		$(this).parent().find('dd').removeClass("menu_chioce");
		$(".leftsidebar_box dt img").attr("src","images/left/select_xl01.png");
		$(this).parent().find('img').attr("src","images/left/select_xl.png");
		$(".menu_chioce").slideUp(); 
		$(this).parent().find('dd').slideToggle();
		$(this).parent().find('dd').addClass("menu_chioce");
	});
});