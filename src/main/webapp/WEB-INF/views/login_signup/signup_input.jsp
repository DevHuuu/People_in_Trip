<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<script type="text/javascript">

</script>
<head>
	<link rel="stylesheet" href="../resources/css/signup_lst/signup_input.css">
	<script type="text/javascript" src="../resources/js/signup_lst/signup_input.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@600&display=swap" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>
    <meta charset="UTF-8">
    <title>회원가입_정보 입력</title>
</head>
<body>
	<!-- <header>
	    <div><h1>People in trip</h1></div>
	</header> -->
	<jsp:include page="/header_lhj/header.jsp" flush="false" />
	<div class="signup_box">
	    <aside class="signup_leftside">
	        <div id="aside_box1">정보<br/>입력</div>
	        <div id="aside_box2">가입<br/>완료</div>
	    </aside>
	    <section class="signup_main" id="signup_input">
	        <div id="main_div1">
	            <table id="main_table1">
	                <tr>
	                    <td id="main_head">회원가입_정보입력</td>
	                    <td id="main_head2"> 전부 필수 작성사항입니다.</td>
	                </tr>
	            </table>
	        </div>
	        <div id="main_div2">
	        	<form action="${contextPath}/signup/addMember" name="form_input" method="post"  >
	                <table id="main_table2" border="1">
	                    <tr>
	                        <td class="table2_td1"><strong>아이디</strong></td>
	                        <td class="table2_td2">
	                            <input type="text" id="input_id" name="id"/>
	                            <input type="hidden" id="input_id_hid" name="id"/>
	                            <div id="hiddendiv_id"></div></td>
	                        <td class="table2_td3">
	                            <button class="t2_btn" type="button" id="Btn_IDduplicate" onclick="fn_IDduplicatecheck()">중복<br/>확인</button>
	                        </td>
	                        <td colspan="2" class="table2_td4" id="input_not1">
	                                <span>영문, 숫자를 조합하여 <br/> 6~20자 이내로 입력하세요.<br/>
	                                    <!-- (대소문자 구별X. 한글, 특수문자, <br/>띄어쓰기 사용 불가) -->
	                                </span>
	                        </td>
	
	                    </tr>
	                    
	                    <tr>
                        <td class="table2_td1"><strong>이름</strong></td>
                        <td class="table2_td2">
                            <input type="text" id="input_name" name="name"/>
                        </td>
                        <td class="table2_td3"></td>
                        <td class="table2_td4_name" id="table2_nameinput" colspan="3">
	                                <span>주민등록상 실명을 입력해주세요.
	                                </span>
                        </td>
                    	</tr>
                    	
	                    <tr>
	                        <td class="table2_td1"><strong>비밀번호</strong></td>
	                        <td class="table2_td2">
	                            <input type="password" id="input_pass" name="pwd"/>
	                        </td>
	                        <td class="table2_td3"></td>
	                        <td class="table2_td4" id="table2_tr2_td4" colspan="3">
	                                <span>영문, 숫자, 특수문자를 조합하여<br/> 8~20자 이내로 입력하세요.
	                                </span>
	                        </td>
	
	                    </tr>
	                    <tr>
	                        <td class="table2_td1"><strong>비밀번호 <br/> 확인</strong></td>
	                        <td class="table2_td2">
	                            <input  type="password" id="input_pass2" name="input_pass2"/>
	                        </td>
	                        <td class="table2_td3" colspan="2"><span id="hiddenspan_pass2">&nbsp;</span></td>
	                    </tr>
	                    <tr>
	                        <td class="table2_td1"><strong>닉네임</strong></td>
	                        <td class="table2_td2">
	                            <input type="text" id="input_nick" name="nick_nm"/>
	                            <input type="hidden" id="input_nick_hid" name="nick_nm"/>
	                            <div id="hiddendiv_nick"></div>
	                        </td>
	                        <td class="table2_td3"><button class="t2_btn" type="button" id="Btn_nickDuplicate" onclick="fn_NickduplicateCheck()">중복<br/>확인</button></td>
	                        <td colspan="2" class="table2_td4" id = "input_not3" >
	                                <span >한글, 영문, 숫자 사용이 가능합니다. <br/> 6~20자 이내로 입력하세요. <br/> 한글은 3~10자까지 입력 가능합니다.<br/>
	                                    <!-- (대소문자 구별X. 특수문자, <br/> 띄어쓰기 사용 불가) -->
	                                </span>
	                        </td>
	                    </tr>
	                    <tr id="email_tr">
	                        <td class="table2_td1"><strong>이메일</strong></td>
	                        <td colspan="1" id="table2_mtd1">
	                            <div class="hiddendiv_email_sub">&nbsp;</div>
	                            <input class="mailinput" id="mailinput1" name="_email" type="text"/>
	                            <input type="hidden" id="email" name="email" value="" />
	                             <!--히든타입 인풋을 만들어 name을 email로 하고 값을 메일인풋1과2를 합친것으로 저장해야함-->
	                            <div class="hiddendiv_email">&nbsp;</div>
	                        </td>
	                        <td id="table2_mtd2"> @</td>
	                        <td id="table2_mtd3">
	                            <div class="hiddendiv_email_sub">&nbsp;</div>
	                            <input class="mailinput" id="mailinput2" name="mailinput2" type="text" 
	                            	 style="width: 135px; height: 25px;" />
	                           	<input type="hidden" id="mail2" name="mail2" value="">
	                            <select id="email_option" name="email_option" onchange="selectBoxChange(this.value)">
	                                <option value="">도메인 선택</option>
	                                <option value="gmail.com">gmail.com</option>
	                                <option value="naver.com">naver.com</option>
	                                <option value="daum.net">daum.net</option>
	                                <option value="direct">직접입력</option>
	                            </select>
	                             <div class="hiddendiv_email">&nbsp;</div>
	                        </td>
	                        <td id="table2_mtd4">
	                            <button class="t2_btn" type="button" onclick="checkEmail()">이메일<br/>인증</button>
	                            <input type="hidden" id="emailCerticode" name="emailCerticode" value=""/>
	                        </td>
	                    </tr>
	                    <tr id="last_tr">
	                        <td colspan="5">
	                            <button class="t2_btn" name="submit_btn" id="submit_btn" type="button" onclick="last_validate()">가입하기</button>
	                        </td>
	                    </tr>
	                </table>
	            </form>
	        </div>
	    </section>
	</div>
</body>
</html>