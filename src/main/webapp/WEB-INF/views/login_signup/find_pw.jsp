<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>pw_search</title>
<link href='https://fonts.googleapis.com/css?family=Pacifico'
	rel='stylesheet'>
<link rel="stylesheet" href="../resources/css/search_kjh/idSearch.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
	function check() {
		if ($("#SID_IN").val() == "") {
			alert("아이디를 입력해 주세요");
			$("#SID_IN").focus();
			return false;
		}
		if ($("#SEMAIL").val() == "") {
			alert("이메일 주소를 입력해 주세요");
			$("#SEMAIL").focus();
			return false;
		}
		if ($("#SINNUM").val() == "") {
			alert("인증번호를 입력해 주세요");
			$("#SINNUM").focus();
			return false;
		} else {
			return window.location.href = "update_pw";
		}

	}

	function btnchange() {
		alert("인증번호를 발송했습니다 인증번호가 오지 않으면 입력하신 정보가 회원정보와 일치하는지 확인해 주세요");
		const btnElement = document.getElementById('btn');
		btnElement.innerText = '인증번호재전송';

	}
</script>
</head>
<body>

	<div class="SEARCH_FORM">
		<h1>People in trip</h1>
		<h5>비밀번호 찾기</h5>
		<input id="SID_IN" type="text" onfocus="this.placeholder='';"
			onblur="this.placeholder='아이디 입력'" placeholder="아이디 입력"><br>
		<input id="SEMAIL" type="text" onfocus="this.placeholder='';"
			placeholder="이메일" onblur="this.placeholder='이메일'"><br>
		<button type="button" class="SBTN" onclick="btnchange()" id="btn">
			<strong>인증번호 전송</strong>
		</button>
		<br> <input id="SINNUM" type="text"
			onfocus="this.placeholder='';" onblur="this.placeholder='인증번호'"
			placeholder="인증번호"><br>
		<button type="button" onClick="check()" class="SBTN">
			<strong>확인</strong>
		</button>
	</div>

</body>