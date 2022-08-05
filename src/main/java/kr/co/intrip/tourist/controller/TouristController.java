package kr.co.intrip.tourist.controller;

<<<<<<< HEAD
import java.util.HashMap;
import java.util.Map;
=======
import java.util.ArrayList;
>>>>>>> 09a95fba8bc3fc5e1e4bac191be24ad33ecbc270

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.intrip.login_signup.service.MemberService;
<<<<<<< HEAD
import kr.co.intrip.tourist.dto.TouristDTO;
=======
import kr.co.intrip.tourist.dto.ApiDTO;
>>>>>>> 09a95fba8bc3fc5e1e4bac191be24ad33ecbc270
import kr.co.intrip.tourist.service.TouristService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TouristController {

	@Autowired
	private TouristService tourservice;
	
	
	//이미지 저장위치
		private static String ARTICLE_IMAGE_REPO = "C:\\workspace-spring\\imageRepo2";
	
	//관광지 메인화면   
	@RequestMapping(value = "tourist/travel_page_kms")
	public ModelAndView travel_page_kms (HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		   
		String viewName = (String) request.getAttribute("viewName");
		System.out.println(viewName);
		   
		mav.setViewName("tourist/travel_page_kms");
		   
		return mav;
	}
	   
<<<<<<< HEAD
	// 관광지 페이지 목록
	   @RequestMapping(value = "tourist/tourist_PageList")
	   public ModelAndView tourist_PageList (HttpServletRequest request, HttpServletResponse response) throws Exception {
	      
	      //section값과 pageNum값을 구함
			String _section = request.getParameter("section");
			String _pageNum = request.getParameter("pageNum");
			
			//최초 요청시 section값과 pageNum값이 없으면 각각 1로 초기화함
			int section = Integer.parseInt(((_section == null) ? "1" : _section));
			int pageNum = Integer.parseInt(((_pageNum == null) ? "1" : _pageNum));
	      
			Map<String , Integer> pagingMap = new HashMap<>();
			pagingMap.put("section", section);
			pagingMap.put("pageNum", pageNum);
			  
			String viewName = (String) request.getAttribute("viewName");
			System.out.println("viewName" + viewName);
			
			//모든 글 정보 조회
			//List<TouristDTO> articlesList = tourservice.listArticles();
			Map<String, Integer> touristMap = tourservice.listArticles(pagingMap);
			
			
			  int totArticles = touristMap.get("totArticles");
			  System.out.println("totArticles:" +totArticles);
			  
			 
			
			touristMap.put("section", section);
			touristMap.put("pageNum", pageNum);
			
			System.out.println("section :" + section);
			System.out.println("pageNum :" + pageNum);
			
			//조회한 글 정보를 바인딩 후 jsp로 전달함
			//mav.addObject("articlesList", articlesList);
	      
		  ModelAndView mav = new ModelAndView();	  
	      mav.setViewName("tourist/tourist_PageList2");
	      mav.addObject("touristMap", touristMap);
	      
	      return mav;
	   }
=======
//	// 관광지 api db에 저장용
//	@GetMapping("tourist/tourist_PageList")
//	public String testList(Model model) throws Exception {
//			
//		String schAirportCode = "alltag";
//			
//		tourservice.parkApi(schAirportCode);
//
//		return "tourist/tourist_PageList";
//	}
>>>>>>> 09a95fba8bc3fc5e1e4bac191be24ad33ecbc270
	
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
