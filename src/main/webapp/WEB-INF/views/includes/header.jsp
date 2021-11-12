<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <ul>
                    <li><a href="/join/login">LOGIN</a></li>
                    <li class="login_show"><a href="">LOGOUT</a></li>
                    <li class="login_show"><a href="">MODIFY</a></li>
                    <li><a href="/join/join">JOIN</a></li>
                </ul>
            </div><!--.util-->
            
        </div><!--.headerIn-->
    </header><!--#header-->