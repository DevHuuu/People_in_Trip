<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="../resources/css/login_signup/signup_certifyemailcode.css">
<script type="text/javascript" src="../resources/js/signup_lst/signup_certifyemailcode.js"></script>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@600&display=swap" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>
    <meta charset="UTF-8">
    <title>회원가입(이메일 인증) 코드출력</title>
</head>
<body>
<div id="certify_email_whole">
    <div id="certi_email_head">
        이메일 인증(코드)
    </div>
    <div id="show_message">
        <div id="show_message_inner1">
            사람들과 함께하는 여행 커뮤니티, <span>피플인 트립</span>에 어서오세요! <br/>
            하단의 인증코드를 입력하시면 이메일 인증이 성공적으로 완료됩니다!<br/>
        </div>
        <div id="show_message_inner2">
            <input id="input_code" type="text" name="input_code" value="686772" />
        </div>
        <div id="notice1">해당 인증 코드를 팝업창에 입력 후 '확인' 버튼을 눌러주세요.</div>
        <div id="hidden_message">
            &nbsp;
        </div>
        <div id="show_message_footer">
            본 메일은 발신전용이며, 문의에 대한 회신은 처리되지 않습니다. <br/>
            (주) 피플 인 트립 | 대표이사: OOO | 주소 : OO시 OOO OOOO 1234 | 문의 메일: <a href="https://mail.google.com/mail/u/0/?tab=rm&ogbl">abcdefg@gmail.com</a>
        </div>
    </div>

    <div id="buttons">
        <button class="buttons">확인</button>
        <button class="buttons">취소</button>
    </div>
</div>
</body>
</html>