package kr.co.intrip.login_signup.service;

import javax.servlet.http.HttpSession;

import kr.co.intrip.login_signup.dto.MemberDTO;

public interface MemberService {
	public MemberDTO Login(MemberDTO memberDTO, HttpSession session) throws Exception;
}
