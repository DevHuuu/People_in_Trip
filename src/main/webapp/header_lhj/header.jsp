<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="contextPath" value="${pageContext.request.contextPath}" />    
<%
	request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript" src="../resources/js/header_lhj/header.js"></script>
 	<link rel="stylesheet" href="../resources/css/header_lhj/header.css" />
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>
</head>
<body>
    <header>
        <div class="logo">
            <a class="to_index" href="#">
                People In Trip
            </a>
        </div>

        <div class="container1">
            <div class="menu">
                <div class="menuitem">
                    <p>관광지</p>
                </div>
                <ul class="submenuitem">
                    <li><a href="#">서울</a></li>
                    <li><a href="#">제주도</a></li>
                </ul>
            </div> 
            <div class="menu">
                <div class="menuitem">
                    <p>커뮤니티</p>
                </div>
                <ul class="submenuitem">  
                    <li><a href="#">정보게시판</a></li>
                    <li><a href="#">동행구해요</a></li>
                </ul>
            </div>
    </div>
        <div class="seacrh_container"><input type="text" placeholder="검색어를 입력해주세요!" ></div>
        <div class="container2">
            <div class="login"><a href="${contextPath}/login_phj/login_phj">로그인</a></div>
            <div class="join"><a href="#">회원가입</a></div>
        </div>
    </header>
</body>
</html>