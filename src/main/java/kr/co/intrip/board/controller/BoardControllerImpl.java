package kr.co.intrip.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import kr.co.intrip.board.dto.BoardDTO;
import kr.co.intrip.board.service.BoardService;
import kr.co.intrip.login_signup.dto.MemberDTO;

@Controller
public class BoardControllerImpl implements BoardController {

	@Autowired
	private BoardService boardService;
	@Autowired
	private BoardDTO boardDTO;
	
	@RequestMapping(value = "/board/read", method = RequestMethod.GET)
	public String read(@ModelAttribute("searchVO") BoardDTO searchVO, Model model) {
		
		
		return "/board/community_detail";
	}
	
	//상세보기
	@Override
	@RequestMapping(value = "/board/community_detail", method = RequestMethod.GET)
	public ModelAndView viewdetail(@RequestParam(value = "post_num") int post_num, 		// 조회할 글 번호를 가져옴
									HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		String viewName = (String) request.getAttribute("viewName");
		
		Map<String, Object> articleMap = boardService.viewdetail(post_num);		//조회할 글 정보,이미지파일 정보를 articleMap에 설정
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("articleMap", articleMap);
		
		return mav;
	}
	
	
	
	@RequestMapping(value = "board/community_writeInfo")
	public String writeInfo() {
		return "board/community_writeInfo";
	}
	
	@RequestMapping(value = "board/community_writeWith")
	public String writeWith() {
		return "board/community_writeWith";
	}
	
	@RequestMapping(value = "board/community_info")
	public String info() {
		return "board/community-info";
	}
	
	/*
	 * @RequestMapping(value = "board/community-acco") public String acco() { return
	 * "board/community-acco"; }
	 */
	
	@RequestMapping(value = "/board/community-acco", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String viewName = (String) request.getAttribute("viewName");
		List<BoardDTO> boardsList = boardService.listArticles();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("boardsList", boardsList);
		
		return mav;
	}

	

	

	


	
}
