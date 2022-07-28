package kr.co.intrip.login_signup.service;

import java.io.PrintWriter;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import kr.co.intrip.login_signup.controller.LoginController;
import kr.co.intrip.login_signup.dao.MemberDAO;
import kr.co.intrip.login_signup.dto.MemberDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	// 로그인
	@Override
	public MemberDTO Login(MemberDTO memberDTO, HttpSession session) throws Exception {
		return memberDAO.Login(memberDTO, session);
	}

	// 아이디 찾기
	@Override
	public MemberDTO find_id(MemberDTO memberDTO) {
		return memberDAO.find_id(memberDTO);
	}

	// 아이디 찾기 출력
	@Override
	public MemberDTO find_id_out(MemberDTO memberDTO) {
		return memberDAO.find_id_out(memberDTO);
	}

	// 비밀번호 찾기
	@Override
	public MemberDTO find_pw(MemberDTO memberDTO) {
		return memberDAO.find_pw(memberDTO);
	}

	// 비밀번호 변경
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
		} 
		catch (Exception e) {
			e.printStackTrace();
			returnVO = null; // 실행하다 문제가 생겼을때 해당 데이터를 보내지않겠다는 의미 = 예외처리
		}
		return returnVO;
	}

	// 구글 회원가입
	@Override
	public void joinMemberByGoogle(MemberDTO memberDTO) {
		memberDAO.joinMemberByGoogle(memberDTO);
	}

	// 카카오 로그인
	public String getAccessToken(String authorize_code) {
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";

		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);

			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();

			sb.append("grant_type=authorization_code");
			sb.append("&client_id=324f9639dc834b0464a6ccdfff50c908"); // 본인이 발급받은 key
			sb.append("&redirect_uri=http://localhost:8080/intrip/kakaologin"); // 본인이 설정한 주소
			sb.append("&code=" + authorize_code);

			bw.write(sb.toString());
			bw.flush();

			int responseCode = conn.getResponseCode();

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);

			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();

			br.close();
			bw.close();
		} 
		catch (IOException e) {
			e.printStackTrace();
		}
		return access_Token;
	}

	// 카카오 로그인
	public MemberDTO getUserInfo(String access_Token) {
		HashMap<String, Object> userInfo = new HashMap<String, Object>();
		String reqURL = "https://kapi.kakao.com/v2/user/me";

		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);

			int responseCode = conn.getResponseCode();

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);

			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

			String id = element.getAsJsonObject().get("id").getAsString();
			String pwd = element.getAsJsonObject().get("id").getAsString();
			String name = properties.getAsJsonObject().get("nickname").getAsString();
			String nick_nm = properties.getAsJsonObject().get("nickname").getAsString();
			String email = kakao_account.getAsJsonObject().get("email").getAsString();
			log.info("json 형식 : " + element);
			userInfo.put("id", id);
			userInfo.put("pwd", pwd);
			userInfo.put("name", name);
			userInfo.put("nick_nm", nick_nm);
			userInfo.put("email", email);			
		} 
		catch (IOException e) {
			e.printStackTrace();
		}
		MemberDTO result = memberDAO.findkakao(userInfo);

		if (result == null) {
			memberDAO.kakaoinsert(userInfo);

			return memberDAO.findkakao(userInfo);
		} 
		else {
			return result;
		}
	}

	// 네이버 로그인
	@Override
	public MemberDTO loginMemberByNaver(MemberDTO memberDTO) throws Exception {
		MemberDTO returnVO = null;
		try {
			returnVO = memberDAO.readMemberWithIDPWNaver(memberDTO.getId());
		} 
		catch (Exception e) {
			e.printStackTrace();
			returnVO = null; // 실행하다 문제가 생겼을때 해당 데이터를 보내지않겠다는 의미 = 예외처리
		}
		return returnVO;
	}

	// 네이버 회원가입
	@Override
	public void joinMemberByNaver(MemberDTO memberDTO) throws Exception {
		memberDAO.joinMemberByNaver(memberDTO);		
	}

	@Override
	public String duplicateCheckId(String id) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectDuplicateCheckId(id);
	}

	@Override
	public String duplicateCheckNick(String nick_nm) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectDuplicateCheckNick(nick_nm);
	}

	@Override
	public int addMember(MemberDTO _memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.addMember(_memberDTO);
	}

	@Override
	public String duplicateCheckEmail(String email) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.selectDuplicateCheckEmail(email);
	}
}
