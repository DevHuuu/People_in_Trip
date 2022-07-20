	function check() {
		if($("#SID_IN").val() == ""){
			alert("아이디를 입력해 주세요"); 
			$("#SID_IN").focus();
	        return false;	
		}
		if($("#SEMAIL").val() == ""){
			alert("이메일 주소를 입력해 주세요"); 
			$("#SEMAIL").focus();
	        return false;
			}
		if($("#SINNUM").val() == ""){
			alert("인증번호를 입력해 주세요"); 
			$("#SINNUM").focus();
	        return false;
			}
		else{
			return window.location.href = "pwSearchOutPut.jsp";
		 }
		
	}
	
	function btnchange() {
		alert("인증번호를 발송했습니다 인증번호가 오지 않으면 입력하신 정보가 회원정보와 일치하는지 확인해 주세요");
		const btnElement = document.getElementById('btn');
		btnElement.innerText = '인증번호재전송';
		
		
	}