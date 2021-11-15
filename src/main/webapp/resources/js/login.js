/**
 * 
 */
 $(document).ready(function(){
 	$(".login_button").on("click",function(){

 		
 		/* 로그인 메서드 서버 요청 */
 		$("#login_form").attr("action", "/join/login.do");
        $("#login_form").submit();
	})
 })
