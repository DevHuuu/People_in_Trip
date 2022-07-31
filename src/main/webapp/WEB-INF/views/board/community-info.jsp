<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Community</title>
    
    <link rel="stylesheet" href="css/bootstrap.css">
    <style type="text/css">
	.table-hover thead tr:hover th, .table-hover tbody tr:hover td {
    	background-color: #9966ff;
    	color: white;
	}
	</style>
</head>

<body>
<header>
		<jsp:include page="/header_lhj/header.jsp" flush="false" />
	</header>
<div class="container">
	<div>
		<table class="table">
			<br><br>
			<tr>
				<th><h4><strong>정보게시판</strong></h4></th>
				<th><b class="text-muted">동행구해요</b></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th>
					<div class="btn-group">
  						<button type="button" class="btn btn-white dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    						전체
  						</button>
  						<ul class="dropdown-menu">
    						<li><a class="dropdown-item" href="#">자유</a></li>
    						<li><a class="dropdown-item" href="#">질문</a></li>
   						 	<li><a class="dropdown-item" href="#">정보</a></li>
  						</ul>
					</div>
				</th>
			</tr>
		</table>
	</div>
	<table class="table table-hover">
		<thead>
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>추천</td>
				<td>조회수</td>
			</tr>
		</thead>
		<!-- 테이블 상단바 -->
		<c:choose>
			<c:when test="${empty boardsList }">
				<tr height="10">
					<td colspan="6">
						<p>
							<b><span style="font-size: 9pt;">등록된 글이 없습니다.</span></b>
						</p>
					</td>
				</tr>
			</c:when>
			
			<c:when test="${!empty boardsList }">
				<c:forEach var="boards" items="${boardsList}" varStatus="boardsNum">
					<tbody>
						<tr>
							<td>${boards.post_num }</td>
							<td><a href="/board/read?boardsList=${boardsList}">
								<c:out value="${boards.post_title }"></c:out> 
							</a></td>
							<td>${boards.id }</td>
							<td><fmt:formatDate value="${boards.post_date }"/></td>
						</tr>
					</tbody>
				</c:forEach>
			</c:when>
		</c:choose>
		
	</table>
	<hr/>
	<div class="text-lg-end text-end">
		<button type="button" class="btn text-white" style="background-color: #9966ff;">글쓰기</button>
	</div>
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#">이전</a></li>
			<li class="page-item disabled">
				<a class="page-link" href="#" tabindex="-1">1</a>
			</li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#">6</a></li>
			<li class="page-item"><a class="page-link" href="#">7</a></li>
			<li class="page-item"><a class="page-link" href="#">8</a></li>
			<li class="page-item"><a class="page-link" href="#">9</a></li>
			<li class="page-item"><a class="page-link" href="#">10</a></li>
			<li class="page-item"><a class="page-link" href="#">다음</a></li>
		</ul>
	</nav>
	
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>