<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="${contextPath}/resources/css/tourist/travler.css">
	<script type="text/javascript">
	var slideIndex = 0; //slide index
	
	// HTML 로드가 끝난 후 동작
	window.onload=function() {
		showSlides(slideIndex);

		// Auto Move Slide
		var sec = 3000;
		setInterval(function() {
			slideIndex++;
			showSlides(slideIndex);
		}, sec);
	}

	// Thumbnail image controls
	function currentSlide(n) {
		slideIndex = n;
		showSlides(slideIndex);
	}

	function showSlides(n) {
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");
		var size = slides.length;

		if((n+1) > size) {
			slideIndex = 0; n = 0;
		} else if(n < 0) {
			slideIndex = (size-1);
			n = (size-1);
		}

		for(i = 0; i< slides.length; i++) {
			slides[i].style.display = "none";
		}

		for(i = 0; i< dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}

		slides[n].style.display = "block";
		dots[n].className += " active";
	}	
	
	function click_seoul() {
		document.getElementById("maps").src="${contextPath}/resources/images/tourist/map2.png";
	}
	
	function click_jeju() {
		document.getElementById("maps").src="${contextPath}/resources/images/tourist/map.png";
	}
	
	/*  */
	</script>
</head>
<body>

	<jsp:include page="/header_lhj/header.jsp" flush="false" />
	
	<!-- 헤더 -->
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
	<br/><br/><br/>
	
	<div class="slideshow-container" >
        <div class="mySlides fade">
            <img src="${contextPath}/resources/images/tourist/travler1.png" style="width: 100%;">
        </div>

        <div class="mySlides fade">
            <img src="${contextPath}/resources/images/tourist/travler2.png" style="width: 100%;">
        </div>

        <div class="mySlides fade">
            <img src="${contextPath}/resources/images/tourist/travler3.png" style="width: 100%;">
        </div>

        <div class="mySlides fade">
            <img src="${contextPath}/resources/images/tourist/travler4.png"style="width: 100%;">
        </div>

        <div style="text-align: center">
            <span class="dot" onclick="currentSlide(0)"></span>
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
        </div>
	</div>
	
	<div id="table_div">
		<table id="weather_table" >
			<tr>
				<th><h3>오늘의 날씨</h3></th>
				<th>
					<input class="map_btn" type="button" value="서울" onclick="click_seoul()">
					<input class="map_btn" type="button" value="제주" onclick="click_jeju()">
				</th>
			</tr>
			<tr>
				<td><img class="weather" alt="날씨" src="${contextPath}/resources/images/tourist/weather.png"></td>
				<td><img class="map" id="maps" alt="지역" src="${contextPath}/resources/images/tourist/map.png"></td>
			</tr>
		</table>
	</div>
</body>
</html>