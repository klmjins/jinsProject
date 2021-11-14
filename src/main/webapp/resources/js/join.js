/**
 * 
 */
$(document).ready(function(){
	$('.id_input').on("propertychange change keyup paste input",function(){
		var user_id = $('.id_input').val();
		var data = {user_id:user_id};
		$.ajax({
			type: "post",
			url: "/join/memberIdChk",
			data: data,
			success: function(result){
				//console.log("성공여부"+result);
				if(result!='fail'){
					$('.idUseO').css("display","inline-block");
					$('.idUseX').css("display","none");
					
				}else{
					$('.idUseX').css("display","inline-block");
					$('.idUseO').css("display","none");
				}
			}
		});
	});
	$('.name_input').on("propertychange change keyup paste input",function(){
		var user_name = $('.name_input').val();
		var data = {user_name:user_name};
		$.ajax({
			type: "post",
			url: "/join/memberNameChk",
			data: data,
			success: function(result){
				//console.log("성공여부"+result);
							
				if(result!='fail'){	// 중복된 닉네임이 없을 경우
					$('.nameUseO').css("display","inline-block");
					$('.nameUseX').css("display","none");
					
				}else{	// 중복된 닉네임이 있을 경우
					$('.nameUseX').css("display","inline-block");
					$('.nameUseO').css("display","none");
				}
			}
		});
	});
});

function signUpValidation(){
	var userId = document.getElementById("user_id");
	var userPw = document.getElementById('user_pw');
	var userName = document.getElementById("user_name");
	var userGen = document.getElementById("user_gen");
	
	
	
	if(userId.value==""){
		$('#id_check_msg').css("display","inline-block");
		document.getElementById('id_check_msg').innerHTML="아이디를 입력하세요.";
		userId.focus();
		
	}else{
		document.getElementById('id_check_msg').innerHTML="";
	}
	
	if(userPw.value==""){
		$('#pw_check_msg').css("display","inline-block");
		document.getElementById('pw_check_msg').innerHTML="비밀번호를 입력하세요.";
		userPw.focus();
	}else{
		document.getElementById('pw_check_msg').innerHTML="";
	}
	
	if(userName.value==""){
		$('#name_check_msg').css("display","inline-block");
		document.getElementById('name_check_msg').innerHTML="닉네임을 입력하세요.";
		userName.focus();
	}else{
		document.getElementById('name_check_msg').innerHTML="";
	}
	
	//if(userGen.value==""){
	//	document.getElementById('gen_check_msg').innerHTML="성별을 선택하세요.";
	//}else{
	//	document.getElementById('gen_check_msg').innerHTML="";
	//}
	if(userId.value!=""&&userPw.value!=""&&userName.value!=""){
		signUp();
	}else{
		return false;
	}
}
function checkPw(){
	var userPw = document.getElementById('user_pw');
    var userPwCheck = document.getElementById('user_pw_c');
    if(userPw.value != userPwCheck.value){
    	$('#pwC_check_msg').css("display","inline-block");
        document.getElementById('pwC_check_msg').innerHTML="비밀번호가 일치하지 않습니다.";
        userPwCheck.focus();
        return false;
    }else{
    	$('#pwC_check_msg').css("color","green");
    	document.getElementById('pwC_check_msg').innerHTML="비밀번호가 일치합니다.";
    }
}

function signUp(){
	alert("회원가입이 완료되었습니다. 로그인하세요.");
}
