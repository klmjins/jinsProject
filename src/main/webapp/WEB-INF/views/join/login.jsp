<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Ootd Board Login</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- reset css -->
	<link rel="stylesheet" href="../resources/css/reset.css">
	<link rel="stylesheet" href="../resources/css/login.css">
    <!-- jquery연결 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- jquery UI연결 -->
    <script src='//cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js'></script>
</head>
<body>
    <div id="wrap">
        <header>
            <h1 class="login_logo"><a href="/oobboard/board">OOB</a></h1>
        </header>
        <div id="container">
            <h1>Login</h1>
            <form name="login_form" action="" method="get">
                <div class="login_row">
                    <span class="id_img">아이디</span>
                    <input type="text" placeholder="아이디를 입력하세요">
                </div>
                <div class="login_row">
                    <span class="pw_img">비밀번호</span>
                    <input type="password" placeholder="비밀번호를 입력하세요">
                </div>
                <div class="login_btn">
                    <button>로그인하기</button>
                </div>
                <div class="login_bottom">
                    <ul>
                        <li><a href="">아이디 찾기</a></li>
                        <li><a href="">비밀번호 찾기</a></li>
                        <li><a href="./join">회원가입</a></li>
                    </ul>
                </div>
            </form>
        </div>
    </div>
</body>
</html>