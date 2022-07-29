package kr.co.intrip.board.service;

import java.util.List;

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
}
