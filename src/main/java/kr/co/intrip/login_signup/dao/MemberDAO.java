package kr.co.intrip.login_signup.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.intrip.login_signup.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	SqlSession sqlSession;

	public MemberDTO Login(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne("member.login", memberDTO);
	}
}
