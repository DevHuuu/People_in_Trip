package kr.co.intrip.board.service;

import java.util.List;

import kr.co.intrip.board.dto.BoardDTO;

public interface BoardService {

	public List<BoardDTO> listArticles() throws Exception;
}
