package kr.co.intrip.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.intrip.board.dto.BoardDTO;
import kr.co.intrip.board.service.BoardService;

@Controller
public class BoardControllerImpl implements BoardController {

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private BoardDTO boardDTO;
	
	
	@RequestMapping(value = "board/community_detail")
	public String detail() {
		return "board/community_detail";
	}
	
	@RequestMapping(value = "board/community_writeInfo")
	public String writeInfo() {
		return "board/community_writeInfo";
	}
	
	@RequestMapping(value = "board/community_writeWith")
	public String writeWith() {
		return "board/community_writeWith";
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
