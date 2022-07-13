package kr.co.intrip.login_signup.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;
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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@PostMapping("login_signup/login") 
	public ModelAndView login(@ModelAttribute MemberDTO memberDTO, HttpSession session)throws Exception {
		MemberDTO user = memberService.Login(memberDTO, session);	
		ModelAndView mav = new ModelAndView();
		if (user != null) {
			log.info("로그인 성공");
			session.setAttribute("user", user);
			session.setAttribute("isLogIn", true);
			log.info("user : " + user);
			mav.setViewName("redirect:/login_signup/signupcomplete");
		}
		else {
			log.info("로그인 실패");
			mav.addObject("message", "error");
			mav.setViewName("login_signup/login");
		}
		return mav;
	}
	
	// 로그아웃
	@GetMapping("logout")
	public ModelAndView logout(HttpSession session)throws Exception {
		ModelAndView mav = new ModelAndView();
		log.info("user : " + session.getAttribute("user"));
		session.invalidate();
		log.info("로그아웃 성공");
		mav.setViewName("redirect:/login_signup/login");
		
		return mav;
	}
	
	// 회원가입 완료 페이지
	@GetMapping("login_signup/signupcomplete")
	public String signupcomplete(HttpServletRequest request, HttpServletResponse response)  {
		return "login_signup/signupcomplete";
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