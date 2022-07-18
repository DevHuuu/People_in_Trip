package kr.co.intrip.login_signup.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.intrip.login_signup.service.MemberService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TouristController {

	@Autowired
	   private MemberService memberService;
	
	// 회원가입 정보 입력 팝업
	   @RequestMapping(value = "tourist/tourist_PageList")
	   public ModelAndView signupInput (HttpServletRequest request, HttpServletResponse response) throws Exception {
	      ModelAndView mav = new ModelAndView();
	      mav.setViewName("tourist/tourist_PageList");
	      
	      return mav;
	   }
	
}
