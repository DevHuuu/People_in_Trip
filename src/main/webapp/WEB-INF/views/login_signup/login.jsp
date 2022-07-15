<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="contextPath" value="${pageContext.request.contextPath}" />    
<%
	request.setCharacterEncoding("UTF-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>로그인</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<link rel="stylesheet" href="../resources/css/login_phj/login.css" />
	<script type="text/javascript" src="../resources/js/login_phj/login.js"></script>
	<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>	
	<script src="https://accounts.google.com/gsi/client" async defer></script>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>  
</head>
<body>
	<div class="login_form">
		<h1>People in Trip</h1>
		<form action="${contextPath}/login_signup/login" name="loginFrm" method="post">
			<div>
				<input type="text" placeholder="아이디" id="login_id" name="id" onfocus="this.placeholder='';" onblur="this.placeholder='아이디'" /><br>
				<input type="password" placeholder="비밀번호" id="login_pw" name="pwd" onfocus="this.placeholder='';" onblur="this.placeholder='비밀번호'" />
				<ul>
					<li id="login_menu"><a href="${contextPath}/login_signup/find_id_page" id="login_menu">아아디 찾기</a></li>
					<li id="login_menu"><a href="${contextPath}/login_signup/find_pw_page" id="login_menu">비밀번호 찾기</a></li>
					<li id="login_menu"><a href="../signup_lst/signup_input.jsp" id="login_menu">회원가입</a></li>
				</ul>
				<button type="submit" id="login_bt" onclick="loginChk();"><strong>로그인</strong></button>
				 <c:if test="${message == 'error'}">
				 <div style="color:red;"> 아이디 또는 비밀번호가 일치하지 않습니다.</div>
				</c:if>
			</div>
		</form>
		<div>
			<p id="login_ez">간편하게 로그인 하기</p><br>		
			<div id="buttonDiv"></div>
			<a href="#"><img src="../resources/images/login_phj/kakao.png" /></a>
			<a href="#"><img src="../resources/images/login_phj/naver.png" /></a> 
		</div>
	</div>
</body>
<script type="text/javascript">
function handleCredentialResponse(response) { 
	const responsePayload = parseJwt(response.credential);
	console.log("ID: " + responsePayload.sub);
    console.log('Full Name: ' + responsePayload.name);
    console.log('Given Name: ' + responsePayload.given_name);
    console.log('Family Name: ' + responsePayload.family_name);
    console.log("Image URL: " + responsePayload.picture);
    console.log("Email: " + responsePayload.email);
    $(function() {
    	var date = new Date();
		$.ajax({
		    url : '/intrip/loginGoogle',
		    type : 'post',
		    data : {
				"id" : responsePayload.sub,
				"name" : responsePayload.name,
				"pwd" : responsePayload.sub,
		        "nick_nm" : responsePayload.name,
				"email" : responsePayload.email, 
				"join_Date" : date.getFullYear() + "-" + ("0" +(date.getMonth() +1)).slice(-2) + "-" +
							("0"+date.getDate()).slice(-2),
				"grade" : "일반회원"
			    },
		    success : function (data) {
		            alert("구글아이디로 로그인 되었습니다");
		            location.href="/intrip/login_signup/signupcomplete";
		        }
		});
	})
}          

function parseJwt (token) {
    var base64Url = token.split('.')[1];
    var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
    var jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
        return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
    }).join(''));
    return JSON.parse(jsonPayload);
};

window.onload = function () {
  google.accounts.id.initialize({
    client_id: "1078833173748-jtu86j39qajahe8lo49oi53e67jmrpsp.apps.googleusercontent.com",
    callback: handleCredentialResponse
  });
  google.accounts.id.renderButton(
    document.getElementById("buttonDiv"),
    { type: "icon", theme: "filled_blue", size: "large"}  // customization attributes
  );  
  google.accounts.id.prompt(); // also display the One Tap dialog
}

function attachSignin(element) {
	handleCredentialResponse.attachClickHandler(element, {},
        function(responsePayload) {
}, function(error) {
	console.log('call check2'); 
  alert(JSON.stringify(error, undefined, 2));
});
}
</script>
</html>