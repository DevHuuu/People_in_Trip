package kr.co.intrip.board.service;

import java.util.List;
import java.util.Map;

import kr.co.intrip.board.dto.BoardDTO;

public interface BoardService {

	public List<BoardDTO> listArticles() throws Exception;

	public Map<String, Object> viewdetail(int post_num);
	
	
}
