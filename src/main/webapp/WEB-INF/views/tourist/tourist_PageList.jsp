<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="${contextPath}/resources/css/tourist/tourist_PageList.css">
	<script type="text/javascript" src="${contextPath}/resources/js/tourist/tourist_PageList.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@600&display=swap" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>    
<meta charset="UTF-8">
<title>관광지 페이지리스트</title>
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
				<li><a href="${contextPath}/tourist/tourist_PageList"><strong>여행지</strong></a></li>
				<li><a href="#"><strong>축제</strong></a></li>
				<li><a href="#"><strong>전시관</strong></a></li>
			</ul>
		</nav>
	</header>
	
	<form name="frm_tourPage" action="#" method="get">
		<div id="tourPage_div">
			<div name="tour_div1" id="tour_div1">
				정렬 &nbsp; <select id="tour_allign">
					<option>찜 순↓</option>
					<option>별점 순↓</option>
					<option>댓글 순↓</option>
				</select>
			</div>
			<div name="tour_div2" id="tour_div2">
			<c:forEach var="plist" items="${plist}">
				<table>
					<tr>
						<td class="tb_td1"><img alt="돈내코 유원지 사진" src="${plist.imgpath }"/></td>
						<td class="tb_td2">
							<span>⭐⭐⭐⭐⚝ 4.5/5.0</span>  <br/>
							<span class="tourpost_title">${plist.title}</span> 🧡 0,000개 💬 0,000개 <br/>
							<span class="tourpost_place">${plist.address }</span>
							<p class="tourpost_content">${plist.introduction}</p>
							<p class="tourpost_content">${plist.alltag}</p>
						</td>
					</tr>					
				</table>
			</c:forEach>
			</div>
			<div name="tour_div3" id="tour_div3">
				<a href="#">1</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">2</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">3</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">4</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">5</a>&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
		</div>
	</form>
</body>
</html>