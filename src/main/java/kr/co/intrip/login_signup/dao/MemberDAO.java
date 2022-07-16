package kr.co.intrip.login_signup.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import kr.co.intrip.login_signup.dto.MemberDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class MemberDAO {

	@Autowired
	SqlSession sqlSession;

	public MemberDTO Login(MemberDTO memberDTO, HttpSession session) {
		return sqlSession.selectOne("mapper.member.Login", memberDTO);
	}

	
	public MemberDTO find_id(MemberDTO memberDTO){
		return sqlSession.selectOne("mapper.member.find_id", memberDTO);
	}

	// 아이디 출력
	public MemberDTO find_id_out(MemberDTO memberDTO, HttpSession session) {
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