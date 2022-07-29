<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="${contextPath}/resources/css/tourist/tourist_View.css?ver=123"/>
	<script type="text/javascript" src="${contextPath}/resources/js/tourist/tourist_View.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<meta charset="UTF-8">
	<title>관광지 상세보기</title>
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
				<li><a href="${contextPath}/tourist/tourist_PageList"><strong>여행지</strong></a></li>
				<li><a href="#"><strong>축제</strong></a></li>
				<li><a href="#"><strong>전시관</strong></a></li>
			</ul>
		</nav>
	</header>
	<br/><br/><br/>
	<!-- 상세보기 화면 -->
    <div class="title_text">
        <span><strong>돈내코 유원지</strong></span>
    </div>
    
    <div class="title_heart">
        <span>조회수 [조회수]&nbsp;&nbsp;</span>
        <a> <img alt="찜" src="https://cdn-icons-png.flaticon.com/512/6704/6704230.png" width="20" height="auto"> </a>
    </div> 
    <div class="img_container">
        <div class="img_big">
            <img src="../resources/images/tourist/donnaeko2.jpg">
        </div>
        <div class="img_small">
            <div><img src="../resources/images/tourist/donnaeko2.jpg"></div>
            <div><img src="../resources/images/tourist/donnaeko2.jpg"></div>
            <div><img src="../resources/images/tourist/donnaeko2.jpg"></div>
        </div>
    </div>
    <div>
        <div class="detaile_info">
            <span><strong>상세정보</strong></span>
        </div>
        <div class="detail_text">
            <p> 계곡 양편이 난대 상록수림으로 울창하게 덮여 있고 높이 5m의 원앙폭포 (돈내코 입구에서 1.5㎞, 20분 소요)와 
                작은 못이 있어 그 경치가 매우 수려하다. 한라산에서 내려오는 얼음같이 차고 맑은 물이 항상 흐르고, 주변경관 
                또한 빼어나 물맞이를 비롯한 피서지로 유명한 곳이다. 백중날 (음력 7월 보름)에는 물을 맞으면 모든 신경통이 
                사라진다는 얘기가 있어 사람들이 가장 많이 붐빈다. 돈내코 유원지 입구에서 계곡까지 약 700m 정도에 달하는 
                숲길은 삼기를 나무가 빽빽이 들어서 있고 중간 중간에 나무 벤치가 있어 산림욕하기에 좋다. 특히 해발 400m 
                일대에는 희귀식물인 한란과 겨울딸기가 자생하고 있는 것으로 유명하다. 계곡 입구 건너편 300m 떨어진 도로변에 
                야영장과 주차장, 취사장, 체력단련 시설이 잘 갖추어져 있고 향토 음식점이 있어 토종닭 등 제주 특유의 별미를 
                맛볼 수 있다.</p>
        </div>
    </div>
    <div class="map">
        <img alt="지도" src="../resources/images/tourist/donnaeko_map.PNG">
    </div>
    <div class="another_info">
        <ul>
            <li>
                <strong>
                    주소
                </strong>
                <span>
                    제주특별자치도 서귀포시 돈내코로 137
                </span>
            </li>
            <li>
                <strong>
                    홈페이지
                </strong>
                <span>
                    <a>http://www.jeju.go.kr/hallasan/</a><br/>
                    비짓제주 <a>https://www.visitjeju.net/u/5eW</a>
                </span>
            </li>
            <li>
                <strong>
                    문의 및 안내
                </strong>
                <span>
                    064-710-6920
                </span>
            </li>
        </ul>
    </div>	
    
    <!-- 댓글창 -->
    <div id="outter">	 
		  <div id="form-commentInfo">
		  <hr align="left" style="border: solid 1px; width: 100%;">
	        <div id="comment-count">작성된 댓글 <span id="count">(1개)</span></div>
	        <div id="css1">
	        <hr align="left" style="border: solid 1px;  width: 100%;"></div>
	        <input type="text" id="comment_input" placeholder="댓글을 입력해 주세요.">
	        <button type="button" onClick="btnbtn()" class="submit" >등록</button>
	    </div><br><br>
	    <div class=list>
			<span class="name">test |</span>
			<span class="wdate">2022-07-18</span>&nbsp; &nbsp;
			<button type="submit" onClick="check2()" class="SEDIT">수정</button>
			<button type="submit" onClick="check1()" class="SDEL">삭제</button><br>
			<c:out value="초밥 맛있어요~!!!!"></c:out><br>
			<button type="submit" onClick="check()" class="SBTN1">신고</button>
			 <hr align="left" style="border: solid 0.1px; width: 100%;"><br><br>		   
    </div>
  </div>
</body>
</html>