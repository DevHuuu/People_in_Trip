<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" href="../resources/css/signup_lst/signup_certifyemail.css">
	<script type="text/javascript" src="../resources/js/signup_lst/signup_certifyemail.js"></script>
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
            사용자가 입력한 apple1234@gmail.com 으로 인증 코드를 발송했습니다. <br/>
            제한 시간 내 인증 코드 6자리를 입력해주세요.<br/>
            <div id="show_message_inner">
                <input id="input_code" type="text" name="input_code" placeholder="ex) 686772" />
            </div>
            <div id="timer">제한 시간 03:00</div>
            <div id="hidden_message">
                &nbsp;
            </div>
        </div>
        <div id="buttons">
            <button class="buttons">확인</button>
            <button class="buttons">취소</button>
        </div>
    </div>
</body>
</html>