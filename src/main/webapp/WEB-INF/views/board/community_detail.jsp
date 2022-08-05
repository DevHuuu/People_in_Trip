<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판(글쓰기)</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="../resources/css/community/community_detail.css"/>
</head>
<body>
    <!-- 헤더 -->
    <div id="page">
    <div id="header-jeh">
       <header>
		<jsp:include page="/header_lhj/header.jsp" flush="false" />
	</header>
    </div>
    <!-- 왼쪽 메뉴바 -->
    <div class="left-menu">
    	<ul class="left-menu-ul">
        	<li class="menu-list"><a href=""><i class="fa-solid fa-bullhorn fa-lg"></i>정보게시판</a></li>
            <li class="menu-list"><a href=""><i class="fa-solid fa-people-robbery fa-lg"></i>동행구해요</a></li>
        </ul>
    </div>
    <!-- 정보게시판 본문 -->
    <section class="content">
        <div>
            <p class="write-detail">정보게시판 > 글쓰기</p>
        </div>
        <div class="write-title">
        	<div class="write-titlemain">
        		<input type="text"  value="${board.POST_TITLE }"  disabled />
   			    <input type="hidden" name="articleNO" value="${board.POST_TITLE }"  />  --%>
        	</div>
        	<div class="write-titlesub">
        		 <!-- | date | 추천 : 0 | 조회수 : 1 -->
        		<input type="text" value="${board.post_num }" disabled />
					<%-- 글수정시 글번호를 컨트롤러에게 전송하기 위해 글번호 저장함 --%>
					<input type="hidden" name="post_num" value="${board.post_num }">
        	</div>
        </div>
        <div>
        	<p class="write-file">첨부파일 : XX.xxx</p>
        </div>
        <div>
        	<p class="write-content">${board.POST_CONTENT }</p>>
        </div>
        <div>
        	<p class="write-comment1">작성된 댓글( X 개)</p>
        </div>
        <div class="write-button">
        	<button id="write-recommand" class="write-recommand" onclick="recommand()">추천</button>
        	<button class="write-declaration">신고</button>
        </div>
        <div class="write-comment22">
        	<textarea class="write-comment2" placeholder="&#13;&#10; - 최대 300자까지 작성할 수 있습니다(띄어쓰기 포함).&#13;&#10; ※ 욕설, 영업에 방해되는 글은 관리자에 의해 삭제될 수 있습니다."></textarea>
        	<button class="write-comment3">등록</button>
        </div>
        <div>
        	<p class="write-id">
        		<span class="write-id2">test2</span>
        		<span class="write-date">| 20XX XX.XX XX:XX</span>
        		<button class="write-edit">수정</button>
        		<button class="write-delete">삭제</button>
        	</p>
        	<p class="write-comment4">테스트 댓글</p>
        	<p class="write-declaration2"><button>신고</button></p>
        </div>
        <div class="write-form">
        	<button class="write-form-write">글쓰기</button>
        	<button class="write-form-edit">수정</button>
        	<button class="write-form-delete">삭제</button>
        </div>
    </section>
    </div>
</body>
</html>