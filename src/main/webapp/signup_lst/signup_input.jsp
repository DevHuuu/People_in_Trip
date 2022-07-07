<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="../resources/css/signup_lst/signup_input.css">
<script type="text/javascript" src="../js/signup_lst/signup_input.js"></script>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@600&display=swap" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>
    <meta charset="UTF-8">
    <title>회원가입_정보 입력</title>
</head>
<body>
    <header>
        <div><h1>People in trip</h1></div>
    </header>
    <div class="signup_box">
        <aside class="signup_leftside">
            <div id="aside_box1">정보입력</div>
            <div id="aside_box2">가입완료</div>
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
                <form action="#">
                    <table id="main_table2" border="1">
                        <tr>
                            <td class="table2_td1"><strong>아이디</strong></td>
                            <td class="table2_td2">
                                <input type="text" id="input_id" name="input_id"/><div id="hiddendiv_id"></div></td>
                            <td class="table2_td3">
                                <button class="t2_btn" type="button">중복<br/>확인</button>
                            </td>
                            <td colspan="2" class="table2_td4">
                                <span>영문, 숫자를 조합하여 6~20자 <br/>이내로 입력하시오.<br/>
                                    (대소문자 구별x. 한글/특문 사용 불가)
                                </span>
                            </td>

                        </tr>
                        <tr>
                            <td class="table2_td1"><strong>비밀번호</strong></td>
                            <td class="table2_td2">
                                <input type="text" id="input_pass" name="input_pass"/>
                            </td>
                            <td class="table2_td3" colspan="2">
                                <span>영문, 숫자, 특수문자를 조합하여<br/> 8~20자 이내로 입력하시오.
                                </span>
                            </td>

                        </tr>
                        <tr>
                            <td class="table2_td1" id="input_pass2" name="input_pass2"><strong>비밀번호 확인</strong></td>
                            <td class="table2_td2">
                                <input type="text"/>
                            </td>
                            <td class="table2_td3" colspan="2"><div id="hiddendiv_pass2"></div></td>
                        </tr>
                        <tr>
                            <td class="table2_td1"><strong>닉네임</strong></td>
                            <td class="table2_td2">
                                <input type="text" id="input_nick" name="input_nick"/><div id="hiddendiv_nick"></div>
                            </td>
                            <td class="table2_td3"><button class="t2_btn" type="button">중복<br/>확인</button></td>
                            <td colspan="2" class="table2_td4">
                                <span>영문, 숫자를 조합하여 6~20자 <br/>이내로 입력하시오.<br/>
                                    (대소문자 구별x. 한글/특문 사용 불가)
                                </span>
                            </td>
                        </tr>
                        <tr id="email_tr">
                            <td class="table2_td1"><strong>이메일</strong></td>
                            <td colspan="2" id="table2_mtd2">
                                <input class="mailinput" id="mailinput1" name="mailinput1" type="text"/> &nbsp;&nbsp; @
                                <div class="hiddendiv_email">&nbsp;</div>
                            </td>
                            <td id="table2_mtd3">
                                <select id="email_option" name="email_option">
                                    <option value="gmail">gmail.com</option>
                                    <option value="naver">naver.com</option>
                                    <option value="daum">daum.net</option>
                                    <option value="direct">직접입력</option>
                                </select>
                                <div class="hiddendiv_email">&nbsp;</div>
                            </td>
                            <td id="table2_mtd4">
                                <button class="t2_btn" type="button">이메일<br/>인증</button>
                            </td>
                        </tr>
                        <tr id="last_tr">
                            <td colspan="5">
                                <button class="t2_btn" id="submit_btn" type="submit">가입하기</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </section>
    </div>
</body>
</html>