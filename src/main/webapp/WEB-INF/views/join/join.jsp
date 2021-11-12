<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Ootb Board Join</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- reset css -->
	<link rel="stylesheet" href="../resources/css/reset.css">
	<link rel="stylesheet" href="../resources/css/join.css">
    <!-- jquery연결 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- jquery UI연결 -->
    <script src='//cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js'></script>
	<script src="../resources/js/join.js"></script>
</head>
<body>
    <div id="wrap">
        <header>
            <h1 class="join_logo"><a href="/oobboard/board">OOB</a></h1>
        </header>
        <div id="container">
            <h1>Join</h1>
            <form name="join_form" action="join" method="post">
                <div class="join_form">
                    <div>
                        <span class="form_name">아이디</span>
                        <input type="text" id="user_id" name="user_id" minlength="4" maxlength="12" pattern="[a-zA-Z0-9]{4,12}" placeholder="4~12자의 영문,숫자로만 입력">
                        <span id="id_check_msg" class= "check_msg"></span>
                    </div>
                    <div>
                        <span class="form_name">비밀번호</span>
                        <input type="password" id="user_pw" name="user_pw" minlength="4" maxlength="12" pattern="[a-zA-Z0-9]{4,12}" placeholder="4~12자의 영문,숫자로만 입력">
                        <span id="pw_check_msg" class= "check_msg"></span>
                    </div>
                    <div>
                        <span class="form_name">비밀번호 확인</span>
                        <input type="password" id="user_pw_c" name="user_pw_c" onkeyup="checkPw()" placeholder="비밀번호를 입력하세요">
                        <span id="pwC_check_msg" class= "check_msg"></span>
                    </div>
                    <div>
                        <span class="form_name">닉네임</span>
                        <input type="text" id="user_name" name="user_name" placeholder="닉네임을 입력하세요">
                        <span id="name_check_msg" class= "check_msg"></span>
                    </div>
                    <div>
                        <span class="form_name">성별</span>
                        <select name="gender" id="user_gen">
                            <option value="">선택</option>
                            <option value="gen_w">여자</option>
                            <option value="gen_m">남자</option>
                        </select>
                        <span id="gen_check_msg" class= "check_msg"></span>
                    </div>
                </div>
                <div class="join_btn">
                    <input type="submit" class="j_btn" onclick="signUpValidation()" value="회원가입하기">
                </div>
                <p class="gotoLogin"><a href="./login.html">이미 아이디가 있으신가요?</a></p>
            </form>
        </div>
    </div>
</body>
</html>