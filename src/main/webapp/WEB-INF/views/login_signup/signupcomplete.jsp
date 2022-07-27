<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="contextPath" value="${pageContext.request.contextPath}" />    
<%
	request.setCharacterEncoding("UTF-8");
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>회원가입 완료</title>
	<link rel="stylesheet" href="../resources/css/signup_phj/signup1.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>
</head>
<body>	
	<jsp:include page="/header_lhj/header.jsp" flush="false" />
		<aside class="signup_leftside">
			<div id="aside_box1">정보<br>입력</div>
			<div id="aside_box2">가입<br>완료</div>
		</aside>
		<h3 id="main_head">가입완료</h3>
		<div class="signupcomplete_msg">
			<h2>회원 가입이 완료되었습니다.</h2>
			<p>여행 속, 사람이 있다! <strong>피플 인 트립</strong>에 가입해주셔서 감사합니다.<br>
			저희 <strong>피플 인 트립</strong>은 언제나 최상의 서비스를 제공하기 위하여 노력하겠습니다.</p>
			<div class="signupcomplete_information">
				<p>아이디 : ${member.id } </p>
				<p>닉네임 : ${member.nick_nm } </p>
			</div>
			<div class="main_home">
				<a href="${contextPath}/logout">메인 페이지 바로가기</a>		
			</div>	
		</div> 
</body>
</html>