<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        body {
            width: 1200px;
            max-width: 1060px;
            margin: 0px auto;            
        }
        .cls1 {
            font-size: 25px;
            font-weight: 500;
            padding: 15px;
            border-bottom: solid 2px black;
            /* border: solid 1px red; */
        }

.signup_main {
    margin-top: 40px;
    margin-left: 15%;
    margin-right: 15%;
}

#main_table2 {
    margin-top: 2%;
    border-collapse: collapse;
    border: 2px solid #9966FF;
    text-align: center;

}
#main_table2 tr {
    border: solid #9966FF;
    height: 100px;
}
#main_table2 td {
    padding: 10px 0;
}



#main_table2 input {
    width: 240px;
    margin-left: 20px;
    background-color: #faf5f5;
    border: solid 1px lightgray;
    height: 30px;
    font-size: 1.2em;
}

#mailinput2 {
    text-align: center;
    margin: 10px 20px;
}
#mailinput2::placeholder {
    color: lightgray;
    font-size:13.5px;
}

.table2_td1 {
    text-align: center;
    width: 28%;
    font-family: 'Raleway', sans-serif;
    font-size: 1.2em;
    border-right: solid 2px #9966FF;
    background-color: #c0ace8;
    color:white;
}

.table2_td2 {
    text-align: center;
    width: 3%;
    border-right: hidden;
}
.table2_td3 {
    width: 10%;
    border-right: hidden;
    border-left: hidden;
    font-size: 13.5px;
}
.table2_td4 {
    border-radius: 5px;
    font-size: 12.8px;
    font-style: italic;
}
#table2_tr3_td3 {
    border-right: solid 2px #9966FF;
    text-align: right;
    padding-right: 20px;
}

.t2_btn {
    background-color: #9966FF;
    color: white;
    border: #9966FF;
    font-size: 13px;
    padding: 9px;
    margin-left: 5%
}

#submit_btn {
    margin-right: 30px;
    padding: 10px;
}

#email_tr {
    text-align: center;
}

#table2_mtd1 {
    border-right: hidden;
}

#table2_mtd2 {
    width: 20%;
    border-right: hidden;
    padding-right: 30px;
    padding-top: 20px;
}
#table2_mtd3 {
    width: 10%;
    border-right: hidden;
    padding-right: 30px;
    padding-top: 20px;
    margin-right: 30px;
}
#table2_mtd4 {
    width: 20%;
    margin-right: 30px;
}
#email_option {
    width: 140px;
    height: 2em;
}

.hiddendiv_email {
    color: limegreen;
    padding-top: 5px;
    padding-left: 20px;
    text-align: center;
    font-size: 10px;
}
.hiddendiv_email_sub {
    font-size: 10px;

}
#hiddenspan_pass2 {
    text-align: center;
}

#last_tr {
    text-align: right;
}
#last_tr td {
    border-right: hidden;
    border-left: hidden;
    border-bottom: hidden;
}
    </style>
</head>
<body>
    <p class="cls1">회원 정보 수정</p>
    <section class="signup_main" id="signup_input">
        <div id="main_div2">
            <form action="#" name="form_input" method="post"  >
                <table id="main_table2" border="1">
                    <tr>
                        <td class="table2_td1"><strong>아이디</strong></td>
                        <td class="table2_td2">
                            <input type="text" id="input_id" name="input_id"/><div id="hiddendiv_id"></div></td>
                        <td class="table2_td3"></td>
                        <td colspan="2" class="table2_td4" id="input_not1">
                                <span>
                                    아이디는 변경이 불가능합니다.
                                </span>
                        </td>

                    </tr>
                    <tr>
                        <td class="table2_td1"><strong>비밀번호</strong></td>
                        <td class="table2_td2">
                            <input type="password" id="input_pass" name="input_pass"/>
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
                            <input type="text" id="input_nick" name="input_nick"/><div id="hiddendiv_nick"></div>
                        </td>
                        <td class="table2_td3"><button class="t2_btn" type="button">중복<br/>확인</button></td>
                        <td colspan="2" class="table2_td4" id = "input_not3" >
                                <span >한글, 영문, 숫자 사용이 가능합니다. <br/> 6~20자 이내로 입력하세요. <br/> 한글은 최대 10자까지 입력 가능합니다.<br/>
                                    <!-- (대소문자 구별X. 특수문자, <br/> 띄어쓰기 사용 불가) -->
                                </span>
                        </td>
                    </tr>
                    <tr id="email_tr">
                        <td class="table2_td1"><strong>이메일</strong></td>
                        <td colspan="1" id="table2_mtd1">
                            <div class="hiddendiv_email_sub">&nbsp;</div>
                            <input class="mailinput" id="mailinput1" name="mailinput1" type="text"/>
                            <div class="hiddendiv_email">&nbsp;</div>
                        </td>
                        <td id="table2_mtd2"> @</td>
                        <td id="table2_mtd3">
                            <div class="hiddendiv_email_sub">&nbsp;</div>
                            <input class="mailinput" id="mailinput2" name="mailinput2" type="text" placeholder="직접입력" onfocus="this.placeholder=''"
                                   value="dir" style="width: 135px; height: 25px;" disabled/>
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
                            <button class="t2_btn" name="submit_btn" id="submit_btn" type="button" onclick="last_validate()">변경하기</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </section>
</body>
</html>