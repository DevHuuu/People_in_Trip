/*코드 확인 횟수 3회 제한*/
let certi_num= "";

/*타이머 함수 관련 변수*/
let time = 180; // 기준시간은 3분으로 한다.
let min = ""; //분
let sec = ""; //초

window.onload = function() {
	let emailCerticode = 0;
	// 인증번호 비교 
	// blur -> focus가 벗어나는 경우 발생
	$('#input_code').blur(function () {
	
		const code = $('#input_val').val();
		const inputCode = $(this).val();
		const $resultMsg = $('#mail-check-warn');
		
		if(inputCode === code){
			$resultMsg.html('인증번호가 일치합니다.');
			$resultMsg.css('color','green');
			$('#mail-check-warn').attr('readonly',true);
			emailCerticode = 1;
			alert('인증이 완료되었습니다.');
			alert(emailCerticode);
			 $.ajax({
		        type: "get",
		        url: "signup_input?emailCerticode="+emailCerticode,
		        dataType: "text",
		        data: {emailCerticode: emailCerticode},
		        success: function (data, textStatus) {
						opener.document.getElementById('emailCerticode').value = 1;
		                self.close();
		            }    
		    })
			
		}else{
			$resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!.');
			$resultMsg.css('color','red');
			emailCerticode = -1;
			alert(emailCerticode);
		}
	});
		
    /*타이머 함수*/
    //setInterval(함수, 시간)은 특정 시간마다 특정 함수 또는 코드 실행 1000ms(=1s)가 지날때마다 해당 함수 실행
    let x = setInterval(function() {



        //parseInt() : 정수를 반환
        min = parseInt(time/60); // min은 몫이다.
        sec = time%60; // sec은 60초로 나눈 나머지

        document.getElementById("timer").innerHTML = "제한시간 : " + min + "분 " + sec + "초";
        time--;

        //타임아웃 시
        if(time < 0) {
            clearInterval(x); //setTimeout() 실행을 끝냄
            alert("제한시간이 종료되었습니다. 이메일 인증을 다시 시도해주세요.")
            window.close();
        }
    }, 1000);
}

    /*확인 버튼을 눌렀을 때 보낸 메일의 코드와 일치하는지 여부를 판단함*/
    function checking_email() {
       
    }
    
   