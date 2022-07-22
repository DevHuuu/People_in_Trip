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
	public MemberDTO loginMemberByGoogle(MemberDTO memberDTO) throws Exception;
	
	// 구글 회원가입
	public void joinMemberByGoogle(MemberDTO memberDTO) throws Exception;

	// 카카오
	public String getAccessToken(String code) throws Exception;
	
	// 카카오
	public MemberDTO getUserInfo(String access_Token) throws Exception;
	
	// 네이버 로그인
	public MemberDTO loginMemberByNaver(MemberDTO memberDTO) throws Exception;
	
	// 네이버 회원가입
	public void joinMemberByNaver(MemberDTO memberDTO) throws Exception;
	public String duplicateCheckId(String id);
	public String duplicateCheckNick(String nick_nm);
	public int addMember(MemberDTO _memberDTO);

}
