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
<title>id_search</title>
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
		if (document.find_id.name.value == "") {
			alert("이름을 입력해 주세요");
			document.find_id.name.focus();
			return false;
		}

		if (document.find_id.email.value == "") {
			alert("이메일 주소를 입력해 주세요");
			document.find_id.email.focus();
			return false;
		}

		if ($("#SINNUM").val() == "") {
			alert("인증번호를 6 자리를 입력해 주세요");
			$("#SINNUM").focus();
			return false;
		}
		if ($("#SINNUM").val() == code) {
			return document.find_id.submit();
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
	<div class="SEARCH_FORM">
		<h1>People in trip</h1>
		<h5>아이디찾기</h5>
		<form action="${contextPath}/login_signup/find_id" name="find_id"
			method="post">
			<input id="SNAME" name="name" type="text"
				onfocus="this.placeholder='';" onblur="this.placeholder='이름'"
				placeholder="이름"><br> <input id="SEMAIL" name="email"
				type="text" onfocus="this.placeholder='';" placeholder="이메일"
				onblur="this.placeholder='이메일'" class="ssemail"><br>
			<button type="button" class="SBTN" onclick="btnchange()" id="btn123">
				<strong>인증번호 전송</strong>
			</button>
			<br> <input id="SINNUM" type="text"
				onfocus="this.placeholder='';" onblur="this.placeholder='인증번호'"
				placeholder="인증번호"><br>
			<button type="button" onClick="check()" class="SBTN">
				<strong>확인</strong>
			</button>
			<br>
			<br>
			
		<c:if test="${check == 1}">
			<script>
				opener.document.find_id.name.value = "";
				opener.document.find_id.email.value = "";
			</script>
			<h3 style="color: red;">일치하는 정보가 존재하지 않습니다.</h3>
		</c:if>
			
	</div>
	</form>
</body>
</html>

