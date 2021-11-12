/**
 * 
 */

function signUpValidation(){
	var userId = document.getElementById("user_id");
	var userName = document.getElementById("user_name");
	var userGen = document.getElementById("user_gen");
	
	
	if(userId.value==""){
		alert("아이디 입력은 필수입니다.");
		document.getElementById('id_check_msg').innerHTML="아이디를 입력하세요.";
		userId.focus();
		return;
	}else{
		document.getElementById('id_check_msg').innerHTML="";
	}
	if(userName.value==""){
		document.getElementById('name_check_msg').innerHTML="닉네임을 입력하세요.";
	}else{
		document.getElementById('name_check_msg').innerHTML="";
	}
	//if(userGen.value==""){
	//	document.getElementById('gen_check_msg').innerHTML="성별을 선택하세요.";
	//}else{
	//	document.getElementById('gen_check_msg').innerHTML="";
	//}
	signUp();
}
function checkPw(){
	var userPw = document.getElementById('user_pw');
    var userPwCheck = document.getElementById('user_pw_c');
    if(userPw.value != userPwCheck.value){
        document.getElementById('pwC_check_msg').innerHTML="비밀번호가 일치하지 않습니다.";
        userPwCheck.focus();
        return false;
    }else{
    	document.getElementById('pwC_check_msg').innerHTML="";
    }
}

function signUp(){
	alert("회원가입이 완료되었습니다. 로그인하세요.");
}
