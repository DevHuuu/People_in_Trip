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
import org.springframework.web.servlet.ModelAndView;

import kr.co.intrip.login_signup.dto.MemberDTO;
import kr.co.intrip.login_signup.service.MemberService;

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
	@PostMapping("login_phj/login_phj") 
	public String loginForm(@ModelAttribute MemberDTO memberDTO, HttpSession session)throws Exception {
		MemberDTO user = memberService.Login(memberDTO, session);
		ModelAndView mav = new ModelAndView();
		if (user !=  null) {
			System.out.println("성공");
			session.setAttribute("id", user.getId());
			session.setAttribute("pwd", user.getPwd());
			return "signup_phj/signupcomplete_phj";
		}
		else {
			System.out.println("실패");
			return "login_phj/login_phj";
		}
	}
	
	// 회원가입 완료 페이지
	@GetMapping("signup_phj/signupcomplete_phj")
	public String signupcomplete(HttpServletRequest request, HttpServletResponse response)  {
		return "signup_phj/signupcomplete_phj";
	}
}