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
<script type="text/javascript"
	src="../resources/js/search_kjh/pwSearchOutput.js"></script>
</head>
<body>
	<form action="${contextPath}/search_kjh/pwSearchOutPut"
		name="find_pw_out" method="post">
		<div class="SEARCH_FORM">
			<h1>People in trip</h1>
			<h5>비밀번호 변경</h5>
			<input id="SPWD" type="password" onfocus="this.placeholder='';"
				onblur="this.placeholder='비밀번호'" placeholder="비밀번호"><br>
			<input id="SPWD1" type="password" onfocus="this.placeholder='';"
				onblur="this.placeholder='비밀번호 입력'" placeholder="비밀번호 확인"><br>
			<button type="button" class="SBTN" onclick="cheak1()">
				<strong>확인<strong>
		</div>
	</form>
</body>
</html>