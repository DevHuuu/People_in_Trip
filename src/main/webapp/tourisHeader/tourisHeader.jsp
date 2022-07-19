<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tourisHeader</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<link rel="stylesheet" href="../resources/css/tourisHeader/tourisHeader.css" />
</head>
<body>		
<jsp:include page="/header_lhj/header.jsp" flush="false" />
	<header>
		<div class="title">
			<h2 style="display: inline;"><strong><a href="#">제주도</a></strong></h2>&nbsp;
			<h3 style="display: inline;">jeju</h3>
		</div>
		<nav class="tourismenu">
			<ul>
				<li><a href="#"><strong>홈</strong></a></li>
				<li><a href="#"><strong>여행지</strong></a></li>
				<li><a href="#"><strong>축제</strong></a></li>
				<li><a href="#"><strong>전시관</strong></a></li>
			</ul>
		</nav>
	</header>
</body>
</html>