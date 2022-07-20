<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>idSearchOutPut</title>
<link href='https://fonts.googleapis.com/css?family=Pacifico'
	rel='stylesheet'>
<link rel="stylesheet" href="../resources/css/search_kjh/idSearch.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
	function page() {
		window.location.href = "../login_phj/login_phj.jsp";    
	}
</script>
</head>
<body>
	<div class="SEARCH_FORM">
		<h1>People in trip</h1>
		<h5>아이디찾기</h5>
		<input id="SID" type="text" value="사용자 아이디 출력"><br>
		<button type="button" class="SBTN" onclick="page()">
			<strong>로그인 페이지로 이동</strong>
	</div>
</body>
</html>