	function cheak1() {
		if($("#SPWD").val() == ""){
			alert("비밀번호를 입력해주세요"); 
			$("#SPWD").focus();
	        return false;
			}
		 if($("#SPWD").val() != $("#SPWD1").val()){
	          alert("비밀번호를 다시 확인해주세요");
	          $("#SPWD").val("");
	          $("#SPWD1").val("");
	          $("#SPWD").focus();
	          return false;
	      }
		else{
			return window.location.href = "https://www.google.com/";
		}
	}




