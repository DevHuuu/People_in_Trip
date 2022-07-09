package kr.co.intrip.login_signup.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.intrip.login_signup.dao.MemberDAO;
import kr.co.intrip.login_signup.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	@Override
	public MemberDTO Login(MemberDTO memberDTO, HttpSession session) throws Exception {
		return memberDAO.Login(memberDTO);
	}

	
}
