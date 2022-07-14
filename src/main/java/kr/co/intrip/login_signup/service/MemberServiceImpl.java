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
		
		return memberDAO.Login(memberDTO, session);
	}

	// 아이디 찾기
	@Override
	public MemberDTO find_id(MemberDTO memberDTO, HttpSession session) throws Exception {
		return memberDAO.find_id(memberDTO, session);
	}	
	
	// 아이디 찾기1
	@Override
	public MemberDTO find_id_out(MemberDTO memberDTO, HttpSession session) throws Exception {
		return memberDAO.find_id_out(memberDTO, session);
	}	
	//비밀번호 찾기
	@Override
	public MemberDTO find_pw(MemberDTO memberDTO) {
		return memberDAO.find_pw(memberDTO);
	}
	//비밀번호 변경
	@Override
	public void update_pw(MemberDTO memberDTO) {
		memberDAO.update_pw(memberDTO);
	}
}
