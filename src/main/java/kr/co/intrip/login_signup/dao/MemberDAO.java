package kr.co.intrip.login_signup.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import java.util.HashMap;

import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import kr.co.intrip.login_signup.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	SqlSession sqlSession;

	// 로그인
	public MemberDTO Login(MemberDTO memberDTO, HttpSession session) {
		return sqlSession.selectOne("mapper.member.Login", memberDTO);
	}

	// 아이디 찾기
	public MemberDTO find_id(MemberDTO memberDTO) {
		return sqlSession.selectOne("mapper.member.find_id", memberDTO);
	}

	// 아이디 찾기 출력
	public MemberDTO find_id_out(MemberDTO memberDTO) {
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

	// 구글 로그인
	public MemberDTO readMemberWithIDPW(String id) {
		return sqlSession.selectOne("mapper.member.readMemberWithIDPW", id);
	}

	// 구글 로그인 정보 DB에 저장
	public int joinMemberByGoogle(MemberDTO memberDTO) {
		return sqlSession.insert("mapper.member.joinMemberByGoogle", memberDTO);
	}

	// 카카오 로그인
	public MemberDTO findkakao(HashMap<String, Object> userInfo) {
		return sqlSession.selectOne("mapper.member.findKakao", userInfo);
	}

	// 카카오 로그인 정보 DB에 저장
	public void kakaoinsert(HashMap<String, Object> userInfo) {
		sqlSession.insert("mapper.member.kakaoInsert", userInfo);
	}
	
	// 네이버 로그인 정보 DB에 저장
	public int joinMemberByNaver(MemberDTO memberDTO) {
		return sqlSession.insert("mapper.member.joinMemberByNaver", memberDTO);
	}

	// 네이버 로그인
	public MemberDTO readMemberWithIDPWNaver(String id) {
		return sqlSession.selectOne("mapper.member.readMemberWithIDPWNaver", id);
	}

	// 회원가입 id 중복검사
	public String selectDuplicateCheckId(String id) {
		String result = sqlSession.selectOne("mapper.member.duplicatecheckId", id);
		return result;
	}

	// 회원가입 닉네임 중복검사
	public String selectDuplicateCheckNick(String nick_nm) {
		String result = sqlSession.selectOne("mapper.member.duplicatecheckNick", nick_nm);
		return result;
	}

	//회원가입 멤버 추가
	public int addMember(MemberDTO _memberDTO) {
		int result = sqlSession.insert("mapper.member.addMember", _memberDTO);
		return result;
	}

	public String selectDuplicateCheckEmail(String email) {
		String result = sqlSession.selectOne("mapper.member.duplicatecheckEmail", email);
		return result;
	}
}