package kr.co.intrip.login_signup.service;

import javax.servlet.http.HttpSession;
import kr.co.intrip.login_signup.dto.MemberDTO;

public interface MemberService {
	
	// 일반 로그인
	public MemberDTO Login(MemberDTO memberDTO, HttpSession session) throws Exception;
	
	// 아이디 찾기
	public MemberDTO find_id(MemberDTO memberDTO) throws Exception;
	
	// 아이디 찾기 출력
	public MemberDTO find_id_out(MemberDTO memberDTO) throws Exception;
	
	// 비밀번호 찾기
	public MemberDTO find_pw(MemberDTO memberDTO) throws Exception;
	
	// 비밀번호 변경
	void update_pw(MemberDTO memberDTO) throws Exception;
	
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
	
	public String duplicateCheckId(String id) throws Exception;
	
	public String duplicateCheckNick(String nick_nm) throws Exception;
	
	public int addMember(MemberDTO _memberDTO) throws Exception;
	
	public String duplicateCheckEmail(String email) throws Exception;

}
