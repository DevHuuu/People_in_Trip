<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" href="${contextPath}/resources/css/signup_lst/signup_certifyemail.css">
	<script type="text/javascript" src="${contextPath}/resources/js/signup_lst/signup_certifyemail.js?ver=123"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@600&display=swap" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>
    <meta charset="UTF-8">
    <title>회원가입(이메일 인증) 코드입력</title>
</head>
<body>
    <div id="certify_email_whole">
        <div id="certi_email_head">
            이메일 인증
        </div>
        <div id="show_message">
            사용자가 입력한 ${email} 으로 인증 코드를 발송했습니다. <br/>
            제한 시간 내 인증 코드 6자리를 입력해주세요.<br/>
            <div id="show_message_inner">
                <input id="input_code" type="text" name="input_code" placeholder="ex) 686772" onfocus="this.placeholder=''" />
                <input type="hidden" id="input_val" name="input_val" value="${code}" />
            </div>
            <div id="timer">&nbsp;</div>
            <div id="mail-check-warn">
                &nbsp;&nbsp;
            </div>
        </div>
        <div id="buttons">
            <button class="buttons" onclick="checking_email()">확인</button>
            <button class="buttons" onclick="window.close()">취소</button>
        </div>
    </div>
    </body>
</html>