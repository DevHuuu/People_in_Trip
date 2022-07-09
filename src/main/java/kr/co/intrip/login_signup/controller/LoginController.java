package kr.co.intrip.login_signup.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	// 로그인 페이지
	@GetMapping("login_phj/login_phj")
	public String login(HttpServletRequest request, HttpServletResponse response)  {
		return "login_phj/login_phj";
	}
	
	// 회원가입 완료 페이지
	@GetMapping("signup_phj/signupcomplete_phj")
	public String signupcomplete(HttpServletRequest request, HttpServletResponse response)  {
		return "signup_phj/signupcomplete_phj";
	}
}