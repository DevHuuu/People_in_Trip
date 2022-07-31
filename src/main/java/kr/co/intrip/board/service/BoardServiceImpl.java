package kr.co.intrip.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.intrip.board.dao.BoardDAO;
import kr.co.intrip.board.dto.BoardDTO;



@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDAO;

	@Override
	public List<BoardDTO> listArticles() throws Exception {
		List<BoardDTO> boardsList = boardDAO.selectAllBoardList();
		return boardsList;
	}


	@Override
	public Map<String, Object> viewdetail(int post_num) {
		Map<String, Object> boardMap = new HashMap<>();
		
		BoardDTO boardDTO = boardDAO.selectBoard(post_num);
		
		boardMap.put("board", boardDTO);
		return boardMap;
	}

	

	
}