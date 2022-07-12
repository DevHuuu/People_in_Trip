package kr.co.intrip.login_signup.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	@GetMapping("login_signup/login")
	public String login()  {
		return "login_signup/login";
	}
	@PostMapping("login_signup/signupcomplete") 
	public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session)throws Exception {
		MemberDTO user = memberService.Login(memberDTO, session);	
		if (user != null) {
			log.info("성공");
			session.setAttribute("user", user);
			return "login_signup/signupcomplete";
		}
		else {
			log.info("실패");
			return "redirect:/login_signup/login";
		}
	}
	
	// 회원가입 완료 페이지
	@GetMapping("signup_phj/signupcomplete_phj")
	public String signupcomplete(HttpServletRequest request, HttpServletResponse response)  {
		return "signup_phj/signupcomplete_phj";
	}
	
	//아이디찾기 페이지
	@RequestMapping(value = "search_kjh/idSearch")
	public String find_id_form(HttpServletRequest request, HttpServletResponse response) throws Exception{
		return "search_kjh/idSearch";
	}
	
	 // 아이디 찾기 실행
	@RequestMapping(value="search_kjh/find_id", method=RequestMethod.POST)
	public String findIdAction(MemberDTO memberDTO, Model model,HttpSession session) throws Exception {
		MemberDTO user = memberService.find_id(memberDTO, session);
		
		if(user == null) { 
			model.addAttribute("check", 1);
		} else { 
			model.addAttribute("check", 0);
			model.addAttribute("id", user.getId());
		}
		
		return "member/findId";
	}	
		  
		 
	
	//아이디찾기1 페이지
		@RequestMapping(value = "search_kjh/idSearchOutPut")
		public String find_id_out(HttpServletRequest request, HttpServletResponse response) throws Exception{
			return "search_kjh/idSearchOutPut";
	
		}
}