package kr.co.intrip.login_signup.service;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.intrip.login_signup.controller.LoginController;
import kr.co.intrip.login_signup.dao.MemberDAO;
import kr.co.intrip.login_signup.dto.MemberDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
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
	
	// 구글 로그인
	@Override
	public MemberDTO loginMemberByGoogle(MemberDTO memberDTO) {
		MemberDTO returnVO = null;
		try {
			returnVO = memberDAO.readMemberWithIDPW(memberDTO.getId());
			log.info("S: 로그인 아이디 : "+memberDTO.getId()+" 이름 : "+memberDTO.getName());
		} catch (Exception e) {
			e.printStackTrace();
			returnVO = null; //실행하다 문제가 생겼을때 해당 데이터를 보내지않겠다는 의미 = 예외처리
		}
		return returnVO;
	}

	//구글 회원가입
	@Override
	public void joinMemberByGoogle(MemberDTO memberDTO) {
		memberDAO.joinMemberByGoogle(memberDTO);			
	}
}
