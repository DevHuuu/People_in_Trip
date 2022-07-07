<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="../resources/css/login/login.css" />
<script type="text/javascript" src="../resources/js/login/login.js"></script>
<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>
</head>
<body>
	<div class="login_form">
		<h1>People in Trip</h1>
		<form action="#" name="loginFrm" method="post">
			<div>
				<input type="text" placeholder="아이디" id="login_id" name="login_id" onfocus="this.placeholder='';" onblur="this.placeholder='아이디'" /><br>
				<input type="password" placeholder="비밀번호" id="login_pw" name="login_pw" onfocus="this.placeholder='';" onblur="this.placeholder='비밀번호'" />
				<ul>
					<li id="login_menu"><a href="#" id="login_menu">아아디 찾기</a></li>
					<li id="login_menu"><a href="#" id="login_menu">비밀번호 찾기</a></li>
					<li id="login_menu"><a href="#" id="login_menu">회원가입</a></li>
				</ul>
				<button type="submit" id="login_bt" onclick="loginChk();"><strong>로그인</strong></button>
			</div>
		</form>
		<div>
			<p id="login_ez">간편하게 로그인 하기</p><br>
			<a href="#"><img src="../resources/images/login/google.png" /></a> 
			<a href="#"><img src="../resources/images/login/kakao.png" /></a>
			<a href="#"><img src="../resources/images/login/naver.png" /></a> 
		</div>
	</div>
</body>
</html>
