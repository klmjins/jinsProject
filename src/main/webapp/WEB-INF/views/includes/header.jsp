<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Ootd Board</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- reset css -->
	<link rel="stylesheet" href="../resources/css/reset.css">
	<link rel="stylesheet" href="../resources/css/index.css">
	<link rel="stylesheet" href="../resources/css/register.css">
    <!-- jquery연결 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- jquery UI연결 -->
    <script src='//cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js'></script>
    <script src="../resources/js/board.js"></script>
</head>
<body>
	<div id="wrap">
    <header id="header">
        <div id="headerIn">
            <h1 class="h-logo"><a href="./board"><img src="../resources/img/logo.png" alt=""></a></h1>
            <div class="gnb">
                <ul>
                    <li><a href="#">WOMEN'S</a></li>
                    <li><a href="#">MEN'S</a></li>
                    <li><a href="#">COMMUNITY</a></li>
                    <li><a href="#">BRAND</a></li>
                </ul>
            </div><!--.gnb-->
            <div class="util">
            	<!-- 로그인 되지 않은 상태 -->
                <c:if test="${user==null}">
	                <ul>
	                    <li><a href="/join/login.do">LOGIN</a></li>
	                    <li><a href="/join/join">JOIN</a></li>
	                </ul>
                </c:if>
                <!-- 로그인 된 상태 -->
                <c:if test="${user!=null}">
                	
		                <ul>
		                    <li><span class="util_uname">${user.user_name}</span>님 안녕하세요</li>
		                    <c:if test="${user.adminCk==0 }">
		                    	<li><a href="">MODIFY</a></li>
		                    </c:if>
		                    <!-- 관리자 로그인 시 -->
		                    <c:if test="${user.adminCk==1 }">
		                    	<li><a href="/admin/main">관리자페이지</a></li>
		                    </c:if>
		                    <!-- 로그아웃 버튼 클릭 -> js 버튼 메서드 작동 -> ajax통해 로그아웃 요청 -> 서버 로그아웃 수행 -> 화면 이동없이 새로고침 통해 화면 변환 -->
		                    <li class="logout"><a id="logout_btn">LOGOUT</a></li>
		                </ul>
	                
	                
                </c:if>
            </div><!--.util-->
            
        </div><!--.headerIn-->
    </header><!--#header-->
    <script>
	    $("#logout_btn").click(function(e){
			$.ajax({
	            type:"POST",
	            url:"/join/logout",
	            success:function(data){
	                alert("로그아웃되었습니다.");
	                document.location.reload();     
	            } 
	        }); // ajax 
		});
    </script>