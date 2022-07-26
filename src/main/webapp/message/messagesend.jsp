<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>정보게시판 > 글쓰기</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="../resources/css/message/messagesend.css">
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
        </div>
        <table class="msg-table-main" border="1">
		<thead>
			<tr class="msg-table-head" align="center">
				<td width="10%"><input type="checkbox"></td>
				<td width="15%">보낸사람</td>
				<td width="45%">내용</td>
				<td width="15%">날짜</td>
			</tr>
		</thead>
		<tbody class="msg-table-body" align="center">
			<tr>
				<td width="10%"><input type="checkbox"></td>
				<td width="15%">이순신</td>
				<td class="msg-comment" width="45%">내용</td>
				<td width="15%">22-07-25</td>
			</tr>
		</tbody>
		</table>
	<nav class="msg-page">
		<ul class="msg-page-ul">
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
    </div>
</body>
</html>