package kr.co.intrip.tourist.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.intrip.login_signup.service.MemberService;
import kr.co.intrip.tourist.dto.ApiDTO;
import kr.co.intrip.tourist.service.TouristService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TouristController {

	@Autowired
	   private TouristService tourservice;
	
	//관광지 메인화면   
	   @RequestMapping(value = "tourist/travel_page_kms")
	   public ModelAndView travel_page_kms (HttpServletRequest request, HttpServletResponse response) throws Exception {
		   ModelAndView mav = new ModelAndView();
		   
		   String viewName = (String) request.getAttribute("viewName");
		   System.out.println(viewName);
		   
		   mav.setViewName("tourist/travel_page_kms");
		   
		   return mav;
	   }
	   
	// 관광지 페이지 목록  
	@GetMapping("tourist/tourist_PageList")
	public String testList(Model model) throws Exception {
			
		String schAirportCode = "alltag";
		String pname = "테스트";
			
		ArrayList<ApiDTO> plist = tourservice.parkApi(schAirportCode);
		model.addAttribute("plist", plist);
		model.addAttribute("pname", pname);
		return "tourist/tourist_PageList";
	}
	
	//관광지 상세보기
	   @RequestMapping(value = "tourist/tourist_View")
	   public ModelAndView tourist_View (HttpServletRequest request, HttpServletResponse response) throws Exception {
		   ModelAndView mav = new ModelAndView();
		   
		   String viewName = (String) request.getAttribute("viewName");
		   System.out.println(viewName);
		   
		   mav.setViewName("tourist/tourist_View");
		   
		   return mav;
	   }
	
	
}
