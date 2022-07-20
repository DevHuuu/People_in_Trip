<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판(글쓰기)</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="../resources/css/community_kjs/writeStyle.css"/>
</head>
<body>
    <!-- 헤더 -->
    <div id="page">
    <div id="header-jeh">
       	<%@ include file="../header_lhj/header.jsp" %>
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
        		[자유] | TEST
        	</div>
        	<div class="write-titlesub">
        		test1 | date | 추천 : 0 | 조회수 : 1
        	</div>
        </div>
        <div>
        	<p class="write-file">첨부파일 : XX.xxx</p>
        </div>
        <div>
        	<p class="write-content">테스트 내용입니다.</p>
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
        	<p class="write-declaration2"><button class="write-declaration2-btn">신고</button></p>
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