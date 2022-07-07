<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>id_search</title>
<link href='https://fonts.googleapis.com/css?family=Pacifico'
	rel='stylesheet'>
<link rel="stylesheet" href="../resources/css/search_kjh/idSearch.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/search_kjh/idSearch.js"></script>
</head>
<body>
	<div class="SEARCH_FORM">
		<h1>People in trip</h1>
		<h5>아이디찾기</h5>
		<input id="SNAME" type="text" onfocus="this.placeholder='';"
			onblur="this.placeholder='이름'" placeholder="이름"><br> <input
			id="SEMAIL" type="text" onfocus="this.placeholder='';"
			placeholder="이메일" onblur="this.placeholder='이메일'"><br>
		<button type="button" class="SBTN" onclick="btnchange()" id="btn">
			<strong>인증번호 전송</strong>
		</button>
		<br> <input id="SINNUM" type="text"
			onfocus="this.placeholder='';" onblur="this.placeholder='인증번호'"
			placeholder="인증번호"><br>
		<button type="button" onClick="check()" class="SBTN">
			<strong>확인</strong>
		</button>
	</div>

</body>
</html>