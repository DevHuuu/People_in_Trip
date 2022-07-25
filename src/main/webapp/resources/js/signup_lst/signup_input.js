
/*각종 유효성 검사에서 쓸 변수 gi넣어주면 안된다.*/
let engCheck = /[a-z]/;
let numCheck = /[0-9]/;
const korean = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;

//g : 발생할 모든 pattern에 대한 전역 검색
//i : 대/소문자 구분 안함
let specialCheck = /[`~!@#$%^&*|\\\'\";:\/?]/gi;

//checkcode는 유효성검사에서 1이면 성공적으로 폼액션, 1이 아닐경우 form action 불가
let checkcode = 0;

//id 인증여부
let idDupcode = 0;
//nick 인증여부
let nickDupcode = 0;
//email 인증여부
let emailCerticode = 0;



window.onload = function() {

	
    /*비밀번호 일치 여부에 따른 HTML문구 삽입*/
    let pass = document.getElementById('input_pass');
    let pass2 = document.getElementById('input_pass2');
    pass.addEventListener("change", function() {
        if (pass.value != pass2.value ) {
            document.getElementById("hiddenspan_pass2").innerHTML = "비밀번호가 일치하지 않습니다.";
            document.getElementById("hiddenspan_pass2").style.color='red';
            checkcode = -1;
        }
        else if (pass.value == pass2.value) {
            document.getElementById("hiddenspan_pass2").innerHTML = "비밀번호가 일치합니다.";
            document.getElementById("hiddenspan_pass2").style.color ='limegreen';
            checkcode = 1;
        }
    }, false );
    // 비밀번호와 비밀번호 확인 단계에서 두 번 function을 넣어주는 이유는 펑션 이후 사용자가 비밀번호 1,2 중 무엇을 고칠지 알 수 없고 변동이 발생할 수 있으므로.
    pass2.addEventListener("change", function() {
        if (pass.value != pass2.value ) {
            document.getElementById("hiddenspan_pass2").innerHTML = "비밀번호가 일치하지 않습니다.";
            document.getElementById("hiddenspan_pass2").style.color='red';
            checkcode = -1;
        }
        else if (pass.value == pass2.value) {
            document.getElementById("hiddenspan_pass2").innerHTML = "비밀번호가 일치합니다.";
            document.getElementById("hiddenspan_pass2").style.color ='limegreen';
            checkcode = 1;
        }
    }, false );
    /*클릭시 안내문구 색깔 변경*/
    var inputId = document.getElementById('input_id');
    inputId.addEventListener("focus", function () {
        document.getElementById('input_not1').style.backgroundColor = '#c0ace8';
        document.getElementById('input_not1').style.fontWeight = 'bolder';
        document.getElementById('input_not1').style.color = 'white';
        document.getElementById('input_not1').style.boxShadow = '5px 5px 3px purple';
        inputId.addEventListener("blur", function () {
            document.getElementById('input_not1').style.backgroundColor = 'white';
            document.getElementById('input_not1').style.fontWeight = 'normal';
            document.getElementById('input_not1').style.color = 'black';
            document.getElementById('input_not1').style.boxShadow = '0px 0px 0px purple';
        })
    }, false);
    var inputName = document.getElementById('input_name');
    inputName.addEventListener("focus", function () {
        document.getElementById('table2_nameinput').style.backgroundColor = '#c0ace8';
        document.getElementById('table2_nameinput').style.fontWeight = 'bolder';
        document.getElementById('table2_nameinput').style.color = 'white';
        document.getElementById('table2_nameinput').style.boxShadow = '5px 5px 3px purple';
        inputName.addEventListener("blur", function () {
            document.getElementById('table2_nameinput').style.backgroundColor = 'white';
            document.getElementById('table2_nameinput').style.fontWeight = 'normal';
            document.getElementById('table2_nameinput').style.color = 'black';
            document.getElementById('table2_nameinput').style.boxShadow = '0px 0px 0px purple';
        })
    }, false);
    var inputPw = document.getElementById('input_pass');
    inputPw.addEventListener("focus", function () {
        document.getElementById('table2_tr2_td4').style.backgroundColor = '#c0ace8';
        document.getElementById('table2_tr2_td4').style.fontWeight = 'bolder';
        document.getElementById('table2_tr2_td4').style.color = 'white';
        document.getElementById('table2_tr2_td4').style.boxShadow = '5px 5px 3px purple';
        // document.querySelector('.table2_td4').style.boxShadow = '3px 3px 3px purple';
        inputPw.addEventListener("blur", function () {
            document.getElementById('table2_tr2_td4').style.backgroundColor = 'white';
            document.getElementById('table2_tr2_td4').style.fontWeight = 'normal';
            document.getElementById('table2_tr2_td4').style.color = 'black';
            document.getElementById('table2_tr2_td4').style.boxShadow = '0px 0px 0px purple';
            // document.querySelector('.table2_td4').style.boxShadow = '';
        })
    }, false);
    var inputNick = document.getElementById('input_nick');
    inputNick.addEventListener("focus", function () {
        document.getElementById('input_not3').style.backgroundColor = '#c0ace8';
        document.getElementById('input_not3').style.fontWeight = 'bolder';
        document.getElementById('input_not3').style.color = 'white';
        document.getElementById('input_not3').style.boxShadow = '5px 5px 3px purple';
        inputNick.addEventListener("blur", function () {
            document.getElementById('input_not3').style.backgroundColor = 'white';
            document.getElementById('input_not3').style.fontWeight = 'normal';
            document.getElementById('input_not3').style.color = 'black';
            document.getElementById('input_not3').style.boxShadow = '0px 0px 0px white';
        })
    }, false);

    /*/!*이메일 직접입력 변화*!/
    $('#email_option').change(function(){
        $("#email_option option:selected").each(function () { //#mail_option의 각 option중 선택된것들을 each로 꺼내며 익명함수 실행

            if($(this).val()== 'direct'){ //직접입력일 경우
                $("#mailinput2").val('');                        //값 초기화
                $("#mailinput2").attr("disabled",false); //활성화
            }else{ //직접입력이 아닐경우
                $("#mailinput2").val($(this).text());      //선택값 입력
                $("#mailinput2").attr("disabled",true); //비활성화
            }
        });
    });*/

    $(function(){
        //직접입력 인풋박스 기존에는 숨어있다가
        $("#mailinput2").hide();
        $("#email_option").change(function() {
            //직접입력을 누를 때 나타남
            if($("#email_option").val() == "direct") {
                $("#mailinput2").show();
                $("#mailinput2").val('');
                
            }  else {
                $("#mailinput2").hide();
            }
        })
    });
}

/*addEventList 작업을 통해 js파일과 html 파일을 분리하는것이 기본이다. 아래 함수는 onchange를 input_pass1,2에 달아주어야함*/
/*function check_pwd1() {
        let input_pass = $("#input_pass").val();
        let input_pass2 = $("#input_pass2").val();
        if (input_pass != input_pass2) {
            document.getElementById("hiddendiv_pass2_incor").innerHTML = "비밀번호가 일치하지 않습니다.";
            document.getElementById("hiddendiv_pass2_cor").innerHTML = "";
        }
        else if (input_pass == input_pass2) {
            document.getElementById("hiddendiv_pass2_cor").innerHTML = "비밀번호가 일치합니다.";
            document.getElementById("hiddendiv_pass2_incor").innerHTML = "";
        }
}*/

/*전체 유효성 검사*/
function last_validate() {
    //checkcode는 유효성검사에서 1이면 성공적으로 폼액션, 1이 아닐경우 form action 불가
    checkcode = 0;

    checkId();
    if(checkcode == 1)
    checkName();
    if(checkcode == 1)
    checkPass();
    if(checkcode == 1)
    checkNickName();

    alert('체크코드: ' + checkcode);

    if(idDupcode != 1) {
        alert('아이디 중복확인 인증을 해주세요.');
        checkcode = -1;
        return false;
    }
    if(nickDupcode != 1) {
        alert('닉네임 중복확인 인증을 해주세요.');
        checkcode = -1;
        return false;
    }
    emailCerticode = document.getElementById('emailCerticode').value;
    if(emailCerticode != 1) {
    	alert(emailCerticode);
        alert('이메일 인증을 완료해주세요.')
        checkcode = -1;
        return false;
    }
    if(checkcode == 1) {
        /*다 되면 폼 액션 보낼 곳 (jsp에서는 jsp로 변경) 배열 쓰는 이유?*/
        document.getElementsByName("submit_btn")[0].setAttribute("type", "submit");
    }
    else
        return false;

}
/*아이디 유효성검사 - */
function checkId() {
    let id = document.getElementById('input_id').value; //아이디 입력값 받아오기
    /*id = id.toUpperCase(); //아이디 대문자화*/
    let idLength = 0;
    let check_eng = 0;
    let check_num = 0;

    //한글, 영문 길이 2,1로 바꾸기
    for (let i = 0; i < id.length; i++) { //한글은 2, 영문은 1로 치환
        //charAt은 String 타입 객체를 char타입으로 변경하는 것. i는 1씩증가하는 인덱스
        ids = id.charAt(i);
        // escape() 함수는 charAt을 통해 받아온 char을 16진수로 바꿔주어 쿠키충돌 피함. 한글은 이 길이가 4넘음.
        if (escape(ids).length > 4) {
            idLength += 2;
        } else {
            idLength += 1;
        }
    }
    //아이디 필수 입력
    if (id == null || id == "") {
        alert("아이디 입력은 필수입니다.");
        form_input.input_id.focus();
        checkcode = -1;
        return false;
    }
    //아이디 빈캄 포함 안됨 \s는 스페이스, 즉 정규식 안의 스페이스 search()는 첫번째로 매칭되는 문자열 반환. 없으면 -1반환
    if (id.search(/\s/) != -1) {
        alert("아이디는 빈 칸을 포함 할 수 없습니다.");
        form_input.input_id.focus();
        checkcode = -1;
        return false;
    }else if(korean.test(id)) {
        alert("아이디는 한글을 포함 할 수 없습니다.");
        form_input.input_id.focus();
        checkcode = -1;
        return false;
    } else if (idLength < 6 || idLength > 20) {
        alert("아이디는 영문 및 숫자를 포함하여 6~20자 입니다.");
        form_input.input_id.focus();
        checkcode = -1;
        return false;
    } else if (specialCheck.test(id)) {
        alert("아이디는 특수문자를 포함 할 수 없습니다.");
        form_input.input_id.focus();
        checkcode = -1;
        return false;
    }
    /*//아이디는 영문 숫자 포함이어야함.
    let idcheck_ENGNUM = 0
    if ((engCheck.test(id))&&(numCheck.test(id))) {
        idcheck_ENGNUM = 1;
    }
    else idcheck_ENGNUM = -1;

    if(idcheck_ENGNUM == -1){
        alert("입력받은 id" + id);
        alert("아이디 영문 숫자 포함 체크 번호:"+ idcheck_ENGNUM);
        window.alert('아이디는 영문과 숫자를 포함한 6자리 이상으로 구성하여야 합니다.');
        //document.getElementById('input_pass').value='';
        form_input.input_id.focus();
        checkcode = -1;
        return false;
    }*/
    // 영어 포함 여부
    if (engCheck.test(id)) {
        check_eng = 1;
    }
    else check_eng = 0;

    if(check_eng == 0){
        window.alert("아이디는 숫자와 영문을 조합하여 6자 이상으로 구성합니다.\n영문 미포함.");
        //document.getElementById('input_pass').value='';
        form_input.input_id.focus();
        checkcode = -1;
        return false;
    }
    // 숫자 포함 여부
    if (numCheck.test(id)) {
        check_num = 1;
    }
    else check_num = 0;

    if(check_num == 0){
        window.alert("아이디는 숫자와 영문을 조합하여 6자 이상으로 구성합니다.\n숫자 미포함.");
        //document.getElementById('input_pass').value='';
        form_input.input_id.focus();
        checkcode = -1;
        return false;
    }

    checkcode = 1;
}

/*이름 유효성검사*/
function checkName() {
    let name = document.getElementById('input_name').value;
    if(name == ''||name == null) {
        alert('이름 입력은 필수입니다.');
        form_input.input_name.focus();
        checkcode =-1;
        return false;
    }
    checkcode = 1;
}

/*비밀번호 유효성검사 */
function checkPass() {
    let pass = document.getElementById('input_pass').value;
    let pass2 = document.getElementById('input_pass2').value;
    let check_SC = 0;
    let check_eng = 0;
    let check_num = 0;
    if(pass == '') {
        alert('패스워드 입력은 필수입니다.');
        form_input.input_pass.focus();
        checkcode =-1;
        return false;
    }
    if(pass.length < 8 || pass.length>16){
        window.alert('비밀번호는 8글자 이상, 16글자 이하만 이용 가능합니다.');
        //document.getElementById('input_pass').value='';
        form_input.input_pass.focus();
        checkcode = -1;
        return false;
    }
    /*for(let i=0;i<specialCheck.length;i++) {*/
    //indexOf()는 해당 문자를 찾아 해당 위치의 인덱스 값을 리턴. 없으면 -1리턴. 여기서는 특수문자 반드시포함해야함.
    // 원래 pass.indexOf(specialCheck[i]) != -1라는 조건식은 specialCheck이 [!,@,#] 등으로 선언되어있을 때 사용
    // 여기서는 specialCheck 변수가 정규식이므로 test()사용. 내용이 포함되면 true반환
    if (specialCheck.test(pass)) {
        check_SC = 1;
    }
    else check_SC = 0;

    if(check_SC == 0){
        window.alert('패스워드는 숫자,영문,특수문자를 포함한 8자 이상으로 구성합니다. \n 특수문자 미포함.')
        //document.getElementById('input_pass').value='';
        form_input.input_pass.focus();
        checkcode = -1;
        return false;
    }
    //숫자 포함 여부
    if (numCheck.test(pass)) {
        check_num = 1;
    }
    else check_num = 0;

    if(check_num == 0){
        window.alert('패스워드는 숫자,영문,특수문자를 포함한 8자 이상으로 구성합니다. \n 숫자 미포함.')
        //document.getElementById('input_pass').value='';
        form_input.input_pass.focus();
        checkcode = -1;
        return false;
    }
    // 영어 포함 여부
    if (engCheck.test(pass)) {
        check_eng = 1;
    }
    else check_eng = 0;

    if(check_eng == 0){
        window.alert('패스워드는 숫자,영문,특수문자를 포함한 8자 이상으로 구성합니다. \n 영문 미포함.')
        //document.getElementById('input_pass').value='';
        form_input.input_pass.focus();
        checkcode = -1;
        return false;
    }


    if(pass != pass2) {
        window.alert('패스워드가 일치하지 않습니다. 다시 확인해주세요.')
        form_input.input_pass.focus();
        checkcode = -1;
        return false;
    }
    checkcode = 1;
}



/*닉네임 유효성검사 - 특문, 빈칸 제외 등*/
function checkNickName () {
    let nickname = document.getElementById('input_nick').value; //닉네임 입력값 받아오기
    nickname = nickname.toUpperCase();
    let nickLength = 0;

    //한글, 영문 길이 2,1로 바꾸기
    for (var i = 0; i < nickname.length; i++) { //한글은 2, 영문은 1로 치환
        //charAt은 String 타입 객체를 char타입으로 변경하는 것. i는 1씩증가하는 인덱스
        nick = nickname.charAt(i);
        // escape() 함수는 charAt을 통해 받아온 char을 16진수로 바꿔주어 쿠키충돌 피함. 한글은 이 길이가 4넘음.
        if (escape(nick).length > 4) {
            nickLength += 2;
        } else {
            nickLength += 1;
        }
    }

    //닉네임 필수 입력
    if (nickname == null || nickname == "") {
        alert("닉네임 입력은 필수입니다.");
        form_input.input_nick.focus();
        checkcode = -1;
        return false;
        //닉네임 빈칸 포함 안됨
    }
    //닉네임 빈캄 포함 안됨 \s는 스페이스, 즉 정규식 안의 스페이스 search()는 첫번째로 매칭되는 문자열 반환. 없으면 -1반환
    else if (nickname.search(/\s/) != -1) {
        alert("닉네임은 빈 칸을 포함 할 수 없습니다.");
        form_input.input_nick.focus();
        checkcode = -1;
        return false;

        //닉네임 한글 3~10자, 영문 및 숫자 6~20자
    } //else if (nickname.length<2 || nickname.length>20) {
    else if (nickLength < 6 || nickLength > 20) {
        alert("닉네임은 한글 3~10자, 영문 및 숫자 6~20자 까지 가능합니다.");
        form_input.input_nick.focus();
        checkcode = -1;
        return false;

        //닉네임 특수문자 포함 안됨 test()는 정규식과 특정 문자열 사이의 일치에 대한 검색을 수행, 일치 true, 불일치 false 반환
    } else if (specialCheck.test(nickname)) {
        alert("닉네임은 특수문자를 포함 할 수 없습니다.");
        form_input.input_nick.focus();
        checkcode = -1;
        return false;

        //닉네임 중복확인
        /*} else {

            $.ajax({
                type : 'POST',
                url : "${contextPath}/member/duplicateCheck",
                data : {
                    data : nick_nm,
                },
                error : function(err) {
                    alert("실행중 오류가 발생하였습니다.");
                    checkcode = -1;
                },
                success : function(data) {

                    alert("사용할 수 있는 닉네임 입니다.");

                } else {

                    alert("사용할 수 없는 닉네임 입니다.");

        }

        }

        });

    }

        }*/
        //닉네임 체크 [E]
    }
    checkcode = 1;
}

//아이디 DB에서 중복체크
function fn_IDduplicatecheck() {
    checkId();
    let input_id = $("#input_id").val()
    $.ajax({
        type: "post",
        url: "/intrip/signup/duplicateCheckId",
        dataType: "text",
        data: {id: input_id},
        success: function (data, textStatus) {
            if(data == 'false') {
                if(checkcode ==1) {
                    alert("사용할 수 있는 id입니다.");
                    $('#Btn_IDduplicate').prop("disabled", true)
                    $('#input_id').prop("disabled", true)
                    $('#input_id_hid').val(input_id)
                    idDupcode = 1;
                }
            }
            else {
                alert("사용할 수 없는 id입니다.");
            }
        },
        error : function(err) {
            alert("사용할 수 없는 id입니다.");
            checkcode = -1;
        }

    })
}

//닉네임 DB에서 중복체크
function fn_NickduplicateCheck() {
    checkNickName();
    let input_nick = $("#input_nick").val()
    $.ajax({
        type: "post",
        url: "/intrip/signup/duplicateCheckNick",
        dataType: "text",
        data: {nick_nm: input_nick},
        success: function (data, textStatus) {
            if(data == 'false') {
                if(checkcode ==1) {
                    alert("사용할 수 있는 닉네임입니다.");
                    $('#Btn_nickDuplicate').prop("disabled", true)
                    $('#input_nick').prop("disabled", true)
                    $('#input_nick_hid').val(input_nick)
                    nickDupcode = 1;
                }
            }
            else {
                alert("사용할 수 없는 닉네임입니다.");
            }
        },
        error : function(err) {
            alert("사용할 수 없는 닉네임입니다.");
            checkcode = -1;
        }

    })
}

/* 이메일에 셀렉트 옵션값 받아오기*/
var selectBoxChange = function (value) {
    if(value == 'direct') {
        let email_direct = document.getElementById('mailinput2');
        email_direct.addEventListener("change", function () {
            let email_directV = document.getElementById('mailinput2').value;

            $('#email').val(email_directV);
        })
    }
    else {
        $('#email').val(value);
    }
}

/* 이메일 인증 (유효성, 중복검사 및 이메일 코드 인증)*/
function checkEmail() {
	//email1에 첫번째 이메일 칸 내용 받기
    let email1 = document.getElementById('mailinput1').value;
    //email2에는  히든태그 email의 내용 받기 (셀렉트의 옵션태그 값)
    let email2 = $('#email').val();
    
    let email = email1 + "@" + email2;

    if(email1 == null || email1 == "" || email2 == "") {
        alert('이메일을 입력하여야 합니다.');
        checkcode = -1;
        return false;
    }
    else {
    checkcode = 1;
	}
    $.ajax({
        type: "post",
        url: "/intrip/signup/duplicateCheckEmail",
        dataType: "text",
        data: {email: email},
        success: function (data, textStatus) {
            if(data == 'false') {
                if(checkcode ==1) {
                    alert("사용할 수 있는 이메일입니다.");
                    $('input[name=email]').attr('value',email);
                    alert(email);
                    $('#mailinput1').prop("disabled", true)
                    $('#mailinput2').prop("disabled", true)
                    $('#email_option').prop("disabled", true)

					email_popup();
					
                    
                }
            }
            else {
                alert("사용할 수 없는 이메일입니다.");
                emailCerticode = -1;
            }
        },
        error : function(err) {
            alert("사용할 수 없는 이메일입니다.");
            checkcode = -1;
        }

    })


}


//이메일 버튼을 누르면 이메일 팝업을 띄우는 것으로
function email_popup() {
	//email2에는  히든태그 email의 내용 받기 (중복체크 실행 이후 시점이므로 온전한 email값이 담김)
    let email2 = $('#email').val();
    let emailPopup = null;
   
    let url = "signup_certifyemail?email="+email2;
    let name = "이메일 인증코드 입력"
    let option = "width = 850, height = 500, top = 100 left = 300"
    emailPopup = window.open(url, name, option);
    
    
    
    /* $.ajax({
        type : 'get',
        url : "post_certifyemail",
        dataType: "text",
        data: {email: email2},
        success : function (data) {
            code =data;
            checkcode = 1;
        },
        error : function(err) {
            alert('전달받은값'+email2);
            alert("이메일 코드 전송에 실패했습니다.");
            checkcode = -1;
        }
    }); // end ajax */

   
}


