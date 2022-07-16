package kr.co.intrip.login_signup.service;

<<<<<<< HEAD
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



=======
import javax.servlet.http.HttpSession;
>>>>>>> 6add24aa04afb4bb945fb240488b5561fd2af85d
import kr.co.intrip.login_signup.dto.MemberDTO;

public interface MemberService {
	public MemberDTO Login(MemberDTO memberDTO, HttpSession session) throws Exception;
	public MemberDTO find_id(MemberDTO memberDTO);
	public MemberDTO find_id_out(MemberDTO memberDTO, HttpSession session) throws Exception;
	MemberDTO find_pw(MemberDTO memberDTO);
	void update_pw(MemberDTO memberDTO);
<<<<<<< HEAD

	
=======
	
	// 구글 로그인	
	public MemberDTO loginMemberByGoogle(MemberDTO memberDTO);
	
	// 구글 회원가입
	public void joinMemberByGoogle(MemberDTO memberDTO);

	// 카카오
	public String getAccessToken(String code);
	
	// 카카오
	public MemberDTO getUserInfo(String access_Token);
>>>>>>> 6add24aa04afb4bb945fb240488b5561fd2af85d
}
