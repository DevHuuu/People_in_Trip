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