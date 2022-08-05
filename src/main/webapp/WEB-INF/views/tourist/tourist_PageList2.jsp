<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="touristList" value="${touristMap.touristList}" />
<c:set var="totArticles" value="${touristMap.totArticles }" />
<c:set var="section" value="${touristMap.section }" />
<c:set var="pageNum" value="${touristMap.pageNum }" />
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="${contextPath}/resources/css/tourist/tourist_PageList.css">
	<script type="text/javascript" src="${contextPath}/resources/js/tourist/tourist_PageList.js?ver=123"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@600&display=swap" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>
<meta charset="UTF-8">
<title>관광지 페이지리스트</title>
<style type="text/css">
		.cls1 {text-decoration: none;}
		.cls2 {text-align: center; font-size: 20px;}
		.no_uline {text-decoration: none;}
		.sel_page {text-decoration: none; color: red;}		/* 선택된 페이지 번호를 빨간색으로 표시함 */
</style>
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
							<span>👍 0</span>  <br/>
							<span class="tourpost_title">돈내코 유원지</span> 🧡 0,000개 💬 0,000개 <br/>
							<span class="tourpost_place">제주 서귀포시 상효동 1503</span>
							<p class="tourpost_content">제주의 백중날(음력 7월 15일)에는 닭을 잡아먹고 물 맞이를 하는 풍습이 있다. 이날 물을 맞으면 모든 신경통이 사라진다는 옛 이야기가 전해오고 있어 백중날 가장 많이 붐비는 곳이 바로 돈내코다. 한라산에서 내려오는 얼음같이 차고 맑은 물이 항상 흐르고, 주위의 경관 또한 빼어나 피서지로도 유명한 곳이다. 계곡 양쪽은 난대 상록수림으로 덮여있고 한란과 겨울 딸기가 자생하고 있고, 원앙폭포가 있어서 경치가 매우 아름답다. 한라산이 가장 웅장하게 보이는 곳으로 알려져 있다…
							</p>
						</td>
					</tr>
					<c:choose>
						<c:when test="${empty touristList }">
							<tr height="10">
								<td colspan="4">
									<p>
										<b><span style="font-size: 9pt;">등록된 글이 없습니다.</span></b>
									</p>
								</td>
							</tr>
						</c:when>
						
						<c:when test="${!empty touristList }">
							<c:forEach var="tourist" items="${touristList }" varStatus="touristNum">
								<tr>
									<td class="tb_td1"><img alt="돈내코 유원지 사진" src="${contextPath}/resources/images/tourist/donnaeko.jpg"/></td>
									<td class="tb_td2">
										<span>👍 ${tourist.count_recommend }개</span>  <br/>
										<a href="${contextPath}/tourist/tourist_PageList?tour_postnum=${tourist.tour_postnum}"><span class="tourpost_title">${tourist.tour_title }</span></a> 🧡 ${tourist.count_heart }개 💬 ${tourist.count_comment }개 <br/>
										<span class="tourpost_place">${tourist.tour_addr }</span>
										<p class="tourpost_content">${tourist.tour_content }</p>
									</td>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose>
				</table>
			</div>
			<!-- <div name="tour_div3" id="tour_div3">
				<a href="#">1</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">2</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">3</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">4</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#">5</a>&nbsp;&nbsp;&nbsp;&nbsp;
			</div> -->
			
			<div class="cls2">
				<c:if test="${totArticles != null }">						<%-- 전체 글수에 따라 페이징 표시를 다르게 함 --%>
					<c:choose>
						<c:when test="${totArticles > 50 }">				<%-- 전체 글수가 50보다 클때 --%>
							<c:forEach var="page" begin="1" end="5" step="1">
								<c:if test="${section > 1 && page == 1 }">
									<a class="no_uline" href="${contextPath}/tourist/tourist_PageList?section=${section-1}&pageNum=${(section-2)*5 + 1}">&nbsp;이전</a>
								</c:if>
									<a class="no_uline" href="${contextPath}/tourist/tourist_PageList?section=${section}&pageNum=${(section-1)*5 + page}">${(section-1)*5 + page }</a>
								<c:if test="${page == 5 }">
									<a class="no_uline" href="${contextPath}/tourist/tourist_PageList?section=${section+1}&pageNum=${(section)*5 + 1}">&nbsp;다음</a>
								</c:if>
								<%-- <c:if test="${section > 1 && page == 1 }">
									<a class="no_uline" href="${contextPath}/tourist/tourist_PageList?section=${section-1}&pageNum=${(section-2)*5 + 1}">&nbsp;이전</a>
								</c:if>
									<a class="no_uline" href="${contextPath}/tourist/tourist_PageList?section=${section}&pageNum=${(section-1)*5 + page}">${(section-1)*5 + page }</a>
								<c:if test="${page == 5 }">
									<a class="no_uline" href="${contextPath}/tourist/tourist_PageList?section=${section+1}&pageNum=${(section)*5 + 1}">&nbsp;다음</a>
								</c:if> --%>
								<%-- <c:if test="${section > 1 && page == 1 }">
									<a class="no_uline" href="${contextPath}/tourist/tourist_PageList?section=${section-1}&pageNum=${(section-1)*5 + 1}">&nbsp;이전</a>
								</c:if>
									<a class="no_uline" href="${contextPath}/tourist/tourist_PageList?section=${section}&pageNum=${page}">${section*5 + page }</a>
								<c:if test="${page == 5 }">
									<a class="no_uline" href="${contextPath}/tourist/tourist_PageList?section=${section-1}&pageNum=${(section)*5 + 1}">&nbsp;다음</a>
								</c:if>	 --%>
							</c:forEach>					
						</c:when>
																				
						<c:when test="${totArticles == 50 }">				<%-- 등록된 글개수가 50개인 경우 --%>
							<c:forEach var="page" begin="1" end="5" step="1">
								<c:choose >
									<%-- 페이지번호와 pageNum이 같은 경우 페이지 변호를 빨간색으로 표시 --%>
									<c:when test="${page == pageNum}">
										<a class="sel_page" href="${contextPath}/tourist/tourist_PageList?section=${section}&pageNum=${page}">${page}</a>
									</c:when>
									<c:otherwise>
										<a class="no_uline" href="${contextPath}/tourist/tourist_PageList?section=${section}&pageNum=${page}">${page}</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</c:when>
						
						<c:when test="${totArticles < 50 }">				<%-- 등록된 글개수가 50개미만인 경우 --%>
															<%-- 글수가 100개 되지 않으므로 표시되는 페이지는 10개가 되지 않고,
																전체 글 수를 10으로 나누어 구한 몫에 1을 더한 페이지까지 표시됨 --%>
							<c:forEach var="page" begin="1" end="${totArtices/10 + 1 }">
								<c:choose >
									<%-- 페이지번호와 pageNum이 같은 경우 페이지 변호를 빨간색으로 표시 --%>
									<c:when test="${page == pageNum}">
										<a class="sel_page" href="${contextPath}/tourist/tourist_PageList?section=${section}&pageNum=${page}">${page}</a>
									</c:when>
									<c:otherwise>
										<a class="no_uline" href="${contextPath}/tourist/tourist_PageList?section=${section}&pageNum=${page}">${page}</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</c:when>				
					</c:choose>
				</c:if>
			</div>
		</div>
	</form>
</body>
</html>