package kr.co.intrip.login_signup.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.intrip.login_signup.dto.MemberDTO;
import kr.co.intrip.login_signup.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class LoginController {
	
	/*
	 * private static final Logger logger =
	 * LoggerFactory.getLogger("LoginController.class");
	 */

	@Autowired
	private MemberService memberService;
	
	// 로그인 페이지
	@GetMapping("login_phj/login_phj")
	public String login()  {
		return "login_phj/login_phj";
	}
	@PostMapping("signup_phj/signupcomplete_phj") 
	public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session)throws Exception {
		MemberDTO user = memberService.Login(memberDTO, session);	
		if (user != null) {
			log.info("성공");
			session.setAttribute("user", user);
			return "signup_phj/signupcomplete_phj";
		}
		else {
			log.info("실패");
			return "redirect:/login_phj/login_phj";
		}
	}
	
	// 회원가입 완료 페이지
	@GetMapping("signup_phj/signupcomplete_phj")
	public String signupcomplete(HttpServletRequest request, HttpServletResponse response)  {
		return "signup_phj/signupcomplete_phj";
	}
}