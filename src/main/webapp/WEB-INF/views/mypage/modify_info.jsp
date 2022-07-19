<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="../resources/css/mypage/mypage.css">
	<script type="text/javascript" src="../resources/js/mypage/mypage.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@600&display=swap" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>
    <title>회원 정보 수정</title>
</head>
<body>
    <header>
        <p class="p1">회원 정보 수정</p>
    </header>
    <section>
        <form action="#">
            <table id="main_table2" border="1">
                <tr>
                    <td class="table2_td1"><strong>아이디</strong></td>
                    <td class="table2_td2">
                        <input type="text" value="[기존 아이디]" disabled />
                    </td>
                    <td class="table2_td3"></td>
                    <td class="table2_td4" colspan="2"><span>아이디는 변경할 수 없습니다.</span></td>
                </tr>

                <tr>
                    <td class="table2_td1"><strong>이름</strong></td>
                    <td class="table2_td2">
                        <input type="text" id="input_name" name="input_name"/>
                    </td>
                    <td class="table2_td3"></td>
                    <td class="table2_td4" id="table2_nameinput" colspan="3">
                        <span>주민등록상 실명을 입력해주세요.</span>
                    </td>
                </tr>

                <tr>
                    <td class="table2_td1"><strong>비밀번호</strong></td>
                    <td class="table2_td2">
                        <input type="password" id="input_pass" name="input_pass"/>
                    </td>
                    <td class="table2_td3"></td>
                    <td class="table2_td4" id="table2_tr2_td4" colspan="3">
                        <span>영문, 숫자, 특수문자를 조합하여<br/> 8~20자 이내로 입력하세요.</span>
                    </td>
                </tr>

                <tr>
                    <td class="table2_td1"><strong>비밀번호 <br/> 확인</strong></td>
                    <td class="table2_td2">
                        <input type="password" id="input_pass2" name="input_pass2" />
                    </td>
                    <td class="table2_td3"></td>
                    <td class="table2_td4" colspan="3"><span id="hiddenspan_pass2">&nbsp;</span></td>
                </tr>

                <tr>
                    <td class="table2_td1"><strong>닉네임</strong></td>
                    <td class="table2_td2">
                        <input type="text" id="input_nick" name="input_nick" /><div id="hiddendiv_nick"></div>
                    </td>
                    <td class="table2_td3"><button class="t2_btn" type="button">중복<br/>확인</button></td>
                    <td class="table2_td4" id="input_not3" colspan="2">
                        <span>한글, 영문, 숫자 사용이 가능합니다. <br/> 6~20자 이내로 입력하세요. <br/> 한글은 최대 10자까지 입력 가능합니다.</span>
                    </td>
                </tr>

                <tr id="email_tr">
                    <td class="table2_td1"><strong>이메일</strong></td>
                    <td id="table2_mtd1">
                        <div class="hiddendiv_email_sub">&nbsp;</div>
                        <input class="mailinput" id="mailinput1" name="mailinput1" type="text"/>
                        <div class="hiddendiv_email">&nbsp;</div>
                    </td>
                    <td id="table2_mtd2"> @</td>
                    <td id="table2_mtd3">
                        <div class="hiddendiv_email_sub">&nbsp;</div>
                        <input class="mailinput" id="mailinput2" name="mailinput2" type="text" placeholder="직접입력" onfocus="this.placeholder=''"
                            value="dir" style="width: 135px; height: 25px;" disabled/>
                        <div class="hiddendiv_email">&nbsp;</div>
                        <select id="email_option" name="email_option">
                            <option value="gmail.com">gmail.com</option>
                            <option value="naver.com">naver.com</option>
                            <option value="daum.net">daum.net</option>
                            <option value="direct">직접입력</option>
                        </select>
                        <div class="hiddendiv_email">&nbsp;</div>
                    </td>
                    <td id="table2_mtd4">
                        <button class="t2_btn" type="button" onclick="email_popup()">이메일<br/>인증</button>
                    </td>
                </tr>
                <tr id="last_tr">
                    <td colspan="5">
                        <button class="t2_btn" id="submit_btn" type="button" onclick="last_validate()">수정하기</button>
                        <!-- <input type="reset" value="다시 작성" /> -->
                    </td>
                </tr>
            </table>
        </form>
    </section>

</body>
</html>