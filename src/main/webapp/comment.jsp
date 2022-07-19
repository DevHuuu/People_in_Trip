<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">

	function check() {
		alert("댓글이 신고되었습니다");
	}
	
	function btnbtn() {
		if ($("#comment_input").val() == "") {
			alert("내용을 입력해 주세요");
			$("#comment_input").focus();
			return false;
		}
		else{
			alert("댓글이 등록되었습니다");
		}
	}
</script>
<style type="text/css">
#outter{
	margin-left: 600px;
	margin-top: 7%;
	
}

#form-commentInfo{
    width: 100%;
}

#comment-count{
    margin-bottom: 10px;
}

#comment_input{
    width: 50%;
    height: 3.3em;
    margin-top: 4%;
}

.submit{
    
    width: 5.5em;
    height: 3.3em;;
    font-size: 15px;
    font-weight: bold;
   
}

#comments{
    margin-top: 10px;
}


.SBTN1{
	margin-left: 700px;
}



</style>

</head>
<body>
	
	<div id="outter">
	  <div id="form-commentInfo">
	  <hr align="left" style="border: solid 1px; width: 60%;">
        <div id="comment-count">작성된 댓글 <span id="count">(1개)</span></div>
        <div id="css1">
        <hr align="left" style="border: solid 1px;  width: 60%;"></div>
        <input type="text" id="comment_input" placeholder="댓글을 입력해 주세요.">
        <button type="button" onClick="btnbtn()" class="submit" >등록</button>
    </div><br><br>
    <div class=list>
		<span class="name">test |</span>
		<span class="wdate">2022-07-18</span>&nbsp &nbsp
		<button type="submit" onClick="check2()" class="SEDIT">수정</button>
		<button type="submit" onClick="check1()" class="SDEL">삭제</button><br>
		<c:out value="초밥 맛있어요~!!!!"></c:out><br>
		<button type="submit" onClick="check()" class="SBTN1">신고</button>
		 <hr align="left" style="border: solid 0.1px; width: 60%;"><br><br>	
    </div>
  </div>
  
</body>
</html>
