package kr.co.intrip.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.intrip.board.service.BoardService;

@Controller
public class BoardControllerImpl implements BoardController {

	@Autowired
	private BoardService boardService;
	
	
	
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
	
	
}
