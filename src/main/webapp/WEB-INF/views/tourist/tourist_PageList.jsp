<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="${contextPath}/resources/css/tourist/tourist_PageList.css">
	<script type="text/javascript" src="${contextPath}/esources\js\tourist\tourist_PageList.js"></script>
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
	<%-- <jsp:include page="/header_lhj/header.jsp" flush="false" /> 여기에는 메뉴가 들어갈거예요. --%>
	
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
				<table>
					<tr>
						<td class="tb_td1"><img alt="돈내코 유원지 사진" src="${contextPath}/resources/images/tourist/donnaeko.jpg"/></td>
						<td class="tb_td2">
							<span>⭐⭐⭐⭐⚝ 4.5/5.0</span>  <br/>
							<span class="tourpost_title">돈내코 유원지</span> 🧡 0,000개 💬 0,000개 <br/>
							<span class="tourpost_place">제주 서귀포시 상효동 1503</span>
							<p class="tourpost_content">제주의 백중날(음력 7월 15일)에는 닭을 잡아먹고 물 맞이를 하는 풍습이 있다. 이날 물을 맞으면 모든 신경통이 사라진다는 옛 이야기가 전해오고 있어 백중날 가장 많이 붐비는 곳이 바로 돈내코다. 한라산에서 내려오는 얼음같이 차고 맑은 물이 항상 흐르고, 주위의 경관 또한 빼어나 피서지로도 유명한 곳이다. 계곡 양쪽은 난대 상록수림으로 덮여있고 한란과 겨울 딸기가 자생하고 있고, 원앙폭포가 있어서 경치가 매우 아름답다. 한라산이 가장 웅장하게 보이는 곳으로 알려져 있다…
							</p>
						</td>
					</tr>
					<tr>
						<td class="tb_td1"><img alt="돈내코 유원지 사진" src="${contextPath}/resources/images/tourist/donnaeko.jpg"/></td>
						<td class="tb_td2">
							<span>⭐⭐⭐⭐⚝ 4.5/5.0</span>  <br/>
							<span class="tourpost_title">돈내코 유원지</span> 🧡 0,000개 💬 0,000개 <br/>
							<span class="tourpost_place">제주 서귀포시 상효동 1503</span>
							<p class="tourpost_content">제주의 백중날(음력 7월 15일)에는 닭을 잡아먹고 물 맞이를 하는 풍습이 있다. 이날 물을 맞으면 모든 신경통이 사라진다는 옛 이야기가 전해오고 있어 백중날 가장 많이 붐비는 곳이 바로 돈내코다. 한라산에서 내려오는 얼음같이 차고 맑은 물이 항상 흐르고, 주위의 경관 또한 빼어나 피서지로도 유명한 곳이다. 계곡 양쪽은 난대 상록수림으로 덮여있고 한란과 겨울 딸기가 자생하고 있고, 원앙폭포가 있어서 경치가 매우 아름답다. 한라산이 가장 웅장하게 보이는 곳으로 알려져 있다…
							</p>
						</td>
					</tr>
					<tr>
						<td class="tb_td1"><img alt="돈내코 유원지 사진" src="${contextPath}/resources/images/tourist/donnaeko.jpg"/></td>
						<td class="tb_td2">
							<span>⭐⭐⭐⭐⚝ 4.5/5.0</span>  <br/>
							<span class="tourpost_title">돈내코 유원지</span> 🧡 0,000개 💬 0,000개 <br/>
							<span class="tourpost_place">제주 서귀포시 상효동 1503</span>
							<p class="tourpost_content">제주의 백중날(음력 7월 15일)에는 닭을 잡아먹고 물 맞이를 하는 풍습이 있다. 이날 물을 맞으면 모든 신경통이 사라진다는 옛 이야기가 전해오고 있어 백중날 가장 많이 붐비는 곳이 바로 돈내코다. 한라산에서 내려오는 얼음같이 차고 맑은 물이 항상 흐르고, 주위의 경관 또한 빼어나 피서지로도 유명한 곳이다. 계곡 양쪽은 난대 상록수림으로 덮여있고 한란과 겨울 딸기가 자생하고 있고, 원앙폭포가 있어서 경치가 매우 아름답다. 한라산이 가장 웅장하게 보이는 곳으로 알려져 있다…
							</p>
						</td>
					</tr>
				</table>
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