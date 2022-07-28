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
<link rel="stylesheet" href="../resources/css/login_signup/idSearch.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#btn123').click(function() {
			const email = $('#SEMAIL').val();
			console.log('완성된 이메일 : ' + email); 
			const checkInput = $('#SINNUM') 

			$.ajax({
				type : 'get',
				url : "/intrip/mailCheck?email=" + email, 
				success : function(data) {
					console.log("data : " + data);
					checkInput.attr('disabled', false);
					code = data;

				}
			}); 
		}); 
	});

	function check() {
		if (document.find_pw.id.value == "") {
			alert("아이디를 입력해 주세요");
			document.find_pw.id.focus();
			return false;
		}

		if (document.find_pw.email.value == "") {
			alert("이메일 주소를 입력해 주세요");
			document.find_pw.email.focus();
			return false;
		}
		if ($("#SINNUM").val() == "") {
			alert("인증번호를 입력해 주세요");
			$("#SINNUM").focus();
			return false;
		}
		if ($("#SINNUM").val() == code) {
			return document.find_pw.submit();
		}

		if ($("#SINNUM").val() != code) {
			alert("인증번호가 틀렸습니다!");
			return false;
		}

	}

	function btnchange() {
		alert("인증번호를 발송했습니다 인증번호가 오지 않으면 입력하신 정보가 회원정보와 일치하는지 확인해 주세요");
		const btnElement = document.getElementById('btn123');
		btnElement.innerText = '인증번호재전송';
	}
</script>
</head>
<body>
	<form action="${contextPath}/login_signup/find_pw" name="find_pw"
		method="post">
		<div class="SEARCH_FORM">
			<h1>People in trip</h1>
			<h5>비밀번호 찾기</h5>
			<input id="SID_IN" name="id" type="text"
				onfocus="this.placeholder='';" onblur="this.placeholder='아이디 입력'"
				placeholder="아이디 입력"><br> <input id="SEMAIL"
				name="email" type="text" onfocus="this.placeholder='';"
				placeholder="이메일" onblur="this.placeholder='이메일'"><br>
			<button type="button" class="SBTN" onclick="btnchange()" id="btn123">
				<strong>인증번호 전송</strong>
			</button>
			<br> <input id="SINNUM" type="text"
				onfocus="this.placeholder='';" onblur="this.placeholder='인증번호'"
				placeholder="인증번호"><br>
			<button type="button" onClick="check()" class="SBTN">
				<strong>확인</strong>
			</button><br><br>
			
			<c:if test="${check == 1}">
			<script>
				opener.document.find_pw.name.value = "";
				opener.document.find_pw.email.value = "";
			</script>
			<h3 style="color: red;">일치하는 정보가 존재하지 않습니다.</h3>
		</c:if>
		
		</div>
	</form>
</body>