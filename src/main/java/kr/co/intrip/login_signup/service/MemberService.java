package kr.co.intrip.login_signup.service;

import javax.servlet.http.HttpSession;
import kr.co.intrip.login_signup.dto.MemberDTO;

public interface MemberService {
	public MemberDTO Login(MemberDTO memberDTO, HttpSession session) throws Exception;

	public MemberDTO find_id(MemberDTO memberDTO, HttpSession session) throws Exception;
	public MemberDTO find_id_out(MemberDTO memberDTO, HttpSession session) throws Exception;
	MemberDTO find_pw(MemberDTO memberDTO);
	void update_pw(MemberDTO memberDTO);
	
	// 구글 로그인	
	public MemberDTO loginMemberByGoogle(MemberDTO memberDTO);
	
	// 구글 회원가입
	public void joinMemberByGoogle(MemberDTO memberDTO);
}
