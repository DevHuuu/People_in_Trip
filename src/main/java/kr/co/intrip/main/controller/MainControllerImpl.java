package kr.co.intrip.main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.intrip.main.dto.MainDTO;
import kr.co.intrip.main.service.MainService;

@Controller
public class MainControllerImpl implements MainController {
	
	@Autowired MainService mainService;
	
	@Autowired MainDTO mainDTO;

	@Override
	@RequestMapping(value = "/mainpage/main" )
	public ModelAndView listMain(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String viewName = (String) request.getAttribute("viewName");
		List<MainDTO> mainsList = mainService.listMain();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("mainsList", mainsList);
		
		return mav;
	}
}
