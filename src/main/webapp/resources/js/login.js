/**
 * 
 */
 $(document).ready(function(){
 	$(".login_button").on("click",function(){
 		alert("로그인버튼");
 		
 		/* 로그인 메서드 서버 요청 */
 		$("#login_form").attr("action", "/join/login");
        $("#login_form").submit();
 		
 		/*var user_id = $('.id_input').val();
 		var user_pw = $('.pw_input').val();
 		
 		var data = {user_id:user_id, user_pw:user_pw};
		$.ajax({
			type: "post",
			url: "/join/login",
			data: data,
			success: function(result){
				//console.log("성공여부"+result);
				if(result!='loginFail'){
					alert("로그인되었습니다.");
					
				}else{
					alert("아이디나 비밀번호가 틀렸습니다.");
				}
			}
		});*/
	})
 })
