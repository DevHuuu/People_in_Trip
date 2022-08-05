package kr.co.intrip.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface MainController {

	public ModelAndView listMain(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
