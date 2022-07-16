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
<title>pwSearchOutPut</title>
<link href='https://fonts.googleapis.com/css?family=Pacifico'
	rel='stylesheet'>
<link rel="stylesheet" href="../resources/css/search_kjh/idSearch.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
	function cheak1() {
		if (document.find_pw1.pwd.value == "") {
			alert("비밀번호를 입력해주세요");
			document.find_pw1.pwd.focus();
			return false;
		}
		if (document.find_pw1.pwd.value != document.find_pw1.pwd1.value) {
			alert("비밀번호를 다시 확인해주세요");
			document.find_pw1.pwd.focus();
			return false;
		} else {
			document.find_pw1.submit();
		}
	}
</script>
</head>
<body>
	<form action="${contextPath}/login_signup/update_pw1" name="find_pw1"
			method="post">
		<div class="SEARCH_FORM">
			<h1>People in trip</h1>
			<h5>비밀번호 변경</h5>
			<input id="SPWD" name="pwd" type="password" onfocus="this.placeholder='';"
				onblur="this.placeholder='비밀번호'" placeholder="비밀번호"><br>
			<input id="SPWD1" name="pwd1" type="password" onfocus="this.placeholder='';"
				onblur="this.placeholder='비밀번호 입력'" placeholder="비밀번호 확인"><br>
			<button type="button" class="SBTN" onclick="cheak1()">
				<strong>확인<strong>
		</div>
	</form>
</body>
</html>