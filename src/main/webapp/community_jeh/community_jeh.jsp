<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>게시판(글쓰기)</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="../resources/css/community_jeh/community_jeh.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
    <!-- 헤더 -->
    <div class="wrapper">
        <header>
            <h1>헤더</h1>
        </header>

        <!-- 왼쪽 메뉴바 -->
        <div>
            <div class="left-menu">
                <nav class="nav1">
                    <ul class="menu">
                        <li class="menu-list"><a href=""><i class="fa-solid fa-bullhorn fa-lg"></i>정보게시판</a></li>
                        <li class="menu-list"><a href=""><i class="fa-solid fa-people-robbery fa-lg"></i>동행구해요</a></li>
                    </ul>
                </nav>
            </div>

            <!-- 정보게시판 본문 -->
            <div class="main-board">
                <!-- 정보게시판 > 글쓰기 -->
                <div>
                    <section class="content-first">
                            <p class="write-detail">정보게시판 > 글쓰기</p>
                    </section>
                </div>
                <!-- 정보게시판 제목입력, 내용입력 -->
                <div class="dropdown-top">
                    <select class="option-box" required>
                        <option selected disabled>선택</option>
                        <option>자유</option>
                        <option>질문</option>
                        <option>정보</option>
                    </select>

                    <span class="small-title"><b>제목</b></span>

                    <input class="text-box" type="text" placeholder="제목을 입력해 주세요!" required />

                    <textarea class="textarea-box" placeholder="내용을 입력해 주세요!" required></textarea>

                    <div class="bottom-btn">
                        <input type="button" value="작성취소" />
                        <input type="submit" value="작성완료" />
                    </div>
                </div>
            </div>


        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>