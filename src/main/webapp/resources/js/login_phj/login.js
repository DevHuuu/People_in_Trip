function loginChk() {
    var form = document.loginFrm;
    if (!form.login_id.value) {
        alert("아이디를 입력해 주십시오.");
        return;
    }
 
    if (!form.login_pw.value) {
        alert("비밀번호를 입력해 주십시오.");
        return;
    }
    form.submit();   
}