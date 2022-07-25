<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />    
<!DOCTYPE html>
<html>
<head>
	<link rel="shortcut icon" href="/favicon.ico" type="../WEB-INF/views/img_kms/mainimg1.jpg">
	<link rel="icon" href="/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="${contextPath}/resources/css/main_kms/main.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="#" method="get">
	<header>
		<jsp:include page="/header_lhj/header.jsp" flush="false" />
	</header>
	
	<h3 id="title1">이달의 인기 여행지</h3>
	<div class="slideshow-container" >
        <div class="mySlides fade">
            <img src="${contextPath}/resources/img_kms/mainimg1.jpg" style="width: 100%;">
        </div>

        <div class="mySlides fade">
            <img src="${contextPath}/resources/img_kms/mainimg2.jpg" style="width: 100%;">
        </div>

        <div class="mySlides fade">
            <img src="${contextPath}/resources/img_kms/mainimg3.jpg" style="width: 100%;">
        </div>

        <div class="mySlides fade">
            <img src="${contextPath}/resources/img_kms/mainimg4.jpg"style="width: 100%;">
        </div>

        <div style="text-align: center">
            <span class="dot" onclick="currentSlide(0)"></span>
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
        </div>
	</div>
	
	<br/>
	
	<h3 id="title2">이달의 추천 공연/전시/축제</h3>
	
	<table class="besttable" bgcolor="#6799FF" align="center" id="table1" >
		<tr>
			<th colspan="5" align="left">
				<input type="button" value="공연" class="tb1btn" onclick="pfBtn1()">
				<input type="button" value="전시" class="tb1btn" onclick="pfBtn2()">
				<input type="button" value="축제" class="tb1btn" onclick="pfBtn3()"> 
			</th>
		</tr>
		<tr>
			<td rowspan="2" width="50" height="30">
				<div class="prev"><img src="${contextPath}/resources/img_kms/left.png" width="50" height="50"></div>
			</td>
			<td rowspan="3">	
                <div class="slide_wrapper">
                    <ul class="slides">
                        <li><img id="bestImg1" src="${contextPath}/resources/img_kms/performance1.jpg" width="180" height="200"></li>
                        <li><img id="bestImg2" src="${contextPath}/resources/img_kms/performance2.jpg" width="180" height="200"></li>
                        <li><img id="bestImg3" src="${contextPath}/resources/img_kms/performance3.jpg" width="180" height="200"></li>
                        <li><img id="bestImg4" src="${contextPath}/resources/img_kms/performance4.jpg" width="180" height="200"></li>
                        <li><img id="bestImg5" src="${contextPath}/resources/img_kms/performance5.jpg" width="180" height="200"></li>
                        <li><img id="bestImg6" src="${contextPath}/resources/img_kms/performance6.jpg" width="180" height="200"></li>
                        <li><img id="bestImg7" src="${contextPath}/resources/img_kms/performance7.jpg" width="180" height="200"></li>
                        <li><img id="bestImg8" src="${contextPath}/resources/img_kms/performance8.jpg" width="180" height="200"></li>
                    </ul>
                </div>
            </td>
			<td colspan="2" width="50" height="30">
				<div class="next"><img src="${contextPath}/resources/img_kms/right.png" width="50" height="50"></div>
			</td>
		</tr>
	</table>
	
	<br/>
	
	<h3 id="title3">게시판</h3>
    <div class="boardmain">
        <div class="titlefont board">

            <img src="${contextPath}/resources/img_kms/Loudspeaker.png" width="30" height="30" align="left" style="padding-bottom: 5px;"/>
            <span class="main3">여행 정보 공유해요~</span>
            <span class="sub1"><a href="community-info.html">더보기 +</a></span>
            <div>
                <table class="tableboard">
                    <thead>
                        <tr>
                            <th style="width:80%">제목</th>
                            <th style="width:20%">조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>경복궁 야간개장 시간~~</td>
                            <td class="viewcnt">5</td>
                        </tr>
						<tr>
                            <td>서귀포 비와요 ㅜ</td>
                            <td class="viewcnt">15</td>
                        </tr>
						<tr>
                            <td>데스노트 존잼</td>
                            <td class="viewcnt">30</td>
                        </tr>
                        <tr>
                            <td>남산타워맛집</td>
                            <td class="viewcnt">13</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="titlefont board">
            <img src="${contextPath}/resources/img_kms/people.png" width="30" height="30" align="left" style="padding-bottom: 5px;"/>
            <span class="main4">동행구해요!</span>
            <span class="sub2"><a href="community-acco.html">더보기 +</a></span>
            <div>
                <table class="tableboard" style="margin-left: 5px;">
                    <thead>
                        <tr>
                            <th style="width:80%">제목</th>
                            <th style="width:20%">조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>덕수궁 야간개장 가실분~~</td>
                            <td class="viewcnt">3</td>
                        </tr>
						<tr>
                            <td>흠뻑쇼(1 /5)</td>
                            <td class="viewcnt">27</td>
                        </tr>
						<tr>
                            <td>번개 구해요</td>
                            <td class="viewcnt">13</td>
                        </tr>
                        <tr>
                            <td>제주도 게하파티</td>
                            <td class="viewcnt">5</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

	<script type="text/javascript" defer>
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

		var slides = document.querySelector('.slides') ,
			slide = document.querySelectorAll('.slides li') ,
			currentIdx = 0 ,
			slideCount = slide.length ,
			slideWidth = 180 ,
			slideMargin = 10 ,
			prevBtn = document.querySelector('.prev') ,
			netxBtn = document.querySelector('.next');
	
			slides.style.width = (slideWidth + slideMargin) * slideCount - slideMargin + 'px';

			function moveSlide(num) {
				slides.style.left = -num * 190 + 'px';
				currentIdx = num;
			}
			netxBtn.addEventListener('click', function(){
				if(currentIdx < slideCount - 3) {
					moveSlide(currentIdx + 1);
				} else {
					moveSlide(0);
				}
			});

			prevBtn.addEventListener('click', function(){
				if(currentIdx > 0) {
					moveSlide(currentIdx - 1);
				} else {
					moveSlide(slideCount - 3);
				}
				
			});

		function pfBtn1() {
			document.getElementById("bestImg1").src="${contextPath}/resources/img_kms/performance1.jpg";
			document.getElementById("bestImg2").src="${contextPath}/resources/img_kms/performance2.jpg";
			document.getElementById("bestImg3").src="${contextPath}/resources/img_kms/performance3.jpg";
			document.getElementById("bestImg4").src="${contextPath}/resources/img_kms/performance4.jpg";
			document.getElementById("bestImg5").src="${contextPath}/resources/img_kms/performance5.jpg";
			document.getElementById("bestImg6").src="${contextPath}/resources/img_kms/performance6.jpg";
			document.getElementById("bestImg7").src="${contextPath}/resources/img_kms/performance7.jpg";
			document.getElementById("bestImg8").src="${contextPath}/resources/img_kms/performance8.jpg";
		}
		function pfBtn2() {
			document.getElementById("bestImg1").src="${contextPath}/resources/img_kms/exhibition1.jpg";
			document.getElementById("bestImg2").src="${contextPath}/resources/img_kms/exhibition2.jpg";
			document.getElementById("bestImg3").src="${contextPath}/resources/img_kms/exhibition3.jpg";
			document.getElementById("bestImg4").src="${contextPath}/resources/img_kms/exhibition4.jpg";
			document.getElementById("bestImg5").src="${contextPath}/resources/img_kms/exhibition5.jpg";
			document.getElementById("bestImg6").src="${contextPath}/resources/img_kms/exhibition6.jpg";
			document.getElementById("bestImg7").src="${contextPath}/resources/img_kms/exhibition7.jpg";
			document.getElementById("bestImg8").src="${contextPath}/resources/img_kms/exhibition8.jpg";
		}
		function pfBtn3() {
			document.getElementById("bestImg1").src="${contextPath}/resources/img_kms/festival1.jpg";
			document.getElementById("bestImg2").src="${contextPath}/resources/img_kms/festival2.jpg";
			document.getElementById("bestImg3").src="${contextPath}/resources/img_kms/festival3.jpg";
			document.getElementById("bestImg4").src="${contextPath}/resources/img_kms/festival4.jpg";
			document.getElementById("bestImg5").src="${contextPath}/resources/img_kms/festival5.jpg";
			document.getElementById("bestImg6").src="${contextPath}/resources/img_kms/festival6.jpg";
			document.getElementById("bestImg7").src="${contextPath}/resources/img_kms/festival7.jpg";
			document.getElementById("bestImg8").src="${contextPath}/resources/img_kms/festival8.jpg";
		}
	</script>
</form>
</body>
</html>