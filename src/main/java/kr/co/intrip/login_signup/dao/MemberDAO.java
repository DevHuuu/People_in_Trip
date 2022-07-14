package kr.co.intrip.login_signup.dao;

import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kr.co.intrip.login_signup.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	SqlSession sqlSession;

	public MemberDTO Login(MemberDTO memberDTO, HttpSession session) {
		return sqlSession.selectOne("mapper.member.Login", memberDTO);
	}

	// 아이디 찾기
	public MemberDTO find_id(MemberDTO memberDTO, HttpSession session) throws Exception {
		return sqlSession.selectOne("mapper.member.find_id", memberDTO);
	}

	// 아이디 찾기1
	public MemberDTO find_id_out(MemberDTO memberDTO, HttpSession session) throws Exception {
		return sqlSession.selectOne("mapper.member.find_id_out", memberDTO);
	}

	// 비밀번호 찾기
	public MemberDTO find_pw(MemberDTO memberDTO) {
		return sqlSession.selectOne("mapper.member.find_pw", memberDTO);
	}

	// 비밀번호 변경
	public void update_pw(MemberDTO memberDTO) {
		sqlSession.update("mapper.member.update_pw", memberDTO);
	}

}