package kr.co.intrip.login_signup.service;


import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




import javax.servlet.http.HttpSession;

import kr.co.intrip.login_signup.dto.MemberDTO;

public interface MemberService {
	public MemberDTO Login(MemberDTO memberDTO, HttpSession session) throws Exception;
	public MemberDTO find_id(MemberDTO memberDTO);
	public MemberDTO find_id_out(MemberDTO memberDTO);
	public MemberDTO find_pw(MemberDTO memberDTO);
	void update_pw(MemberDTO memberDTO);


	
	// 구글 로그인	
	public MemberDTO loginMemberByGoogle(MemberDTO memberDTO);
	
	// 구글 회원가입
	public void joinMemberByGoogle(MemberDTO memberDTO);

	// 카카오
	public String getAccessToken(String code);
	
	// 카카오
	public MemberDTO getUserInfo(String access_Token);

}
