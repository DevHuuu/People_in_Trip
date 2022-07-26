<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>정보게시판 > 글쓰기</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="../resources/css/message/messagesenddetail.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript">

    </script>
</head>
<body>
    <!-- 헤더 -->
    <div class="holder">
   	<div id="header-msg">
       	<%@ include file="../header_lhj/header.jsp" %>
    </div>
    
    <div class="wrapper">
        <!-- 왼쪽 메뉴바 -->
        <div>
            <div class="left-menu">
                <ul class="left-menu-ul">
                    <li class="menu-list"><a href=""><i class="fa-solid fa-download"></i>받은쪽지함</a></li>
                    <li class="menu-list"><a href=""><i class="fa-solid fa-upload"></i>보낸쪽지함</a></li>
                </ul>
            </div>
        </div>
        <div class="msg-top">
        	&nbsp;&nbsp;
        	<i class="fa-solid fa-upload"></i>보낸 쪽지함
        	<select class="option-box" required>
           		<option>전체 쪽지</option>
               	<option>공지</option>
                <option>XX</option>
                <option>XX</option>
            </select>
            <input type="text" class="msg-search" placeholder="검색어를 입력해 주세요!" required></input>
            <input type="button" class="msg-search-btn"/>
        </div>
        <div class="msg-del">
        	<button class="del-btn">삭제</button>
        	<button class="repeat-btn">답장</button>
        	<button class="menu-btn">목록</button>
        </div>
        <div class="msg-detail">
        	<p>&nbsp;&nbsp; 보낸사람  :  이순신</p>
        	<p>&nbsp;&nbsp; 받은시간  :  2022-07-25 15:30:25</p>
        </div>
        <div class="msg-comment">
        	<p class="msg-comment-val">
        		테스트 내용입니다.테스트 내용입니다.테스트 내용입니다.테스트 내용입니다.테스트 내용입니다.테스트 내용입니다.
        		테스트 내용입니다.테스트 내용입니다.테스트 내용입니다.테스트 내용입니다.테스트 내용입니다.테스트 내용입니다.
        	</p>
        </div>
    </div>
    </div>
</body>
</html>