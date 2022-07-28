package kr.co.intrip.board.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.intrip.board.dto.BoardDTO;

public interface BoardDAO {
	public List<BoardDTO> selectAllBoardList() throws DataAccessException;
}
