<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">	
    var naver_id_login = new naver_id_login("I650TE1jF8gBiGSdtx4x", "http://localhost:8080/intrip/login/oauth2/code/naver");
    // 네이버 사용자 프로필 조회
    naver_id_login.get_naver_userprofile("naverSignInCallback()");
    // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
    function naverSignInCallback() {  
     	$(function() {
    		var date = new Date();
			$.ajax({
		    	url : '/intrip/naverlogin',
		    	type : 'post',
		    	data : {
					"id" : naver_id_login.getProfileData('id'),
					"name" : naver_id_login.getProfileData('name'),
					"pwd" : naver_id_login.getProfileData('id'),
		        	"nick_nm" : naver_id_login.getProfileData('name'),
					"email" : naver_id_login.getProfileData('email')
			    },
		    	success : function (data) {
		            alert("네이버아이디로 로그인 되었습니다.");
		            location.href="/intrip/mainpage/main";
		        }
			}); 
    	});
    }
</script>
</body>
</html>