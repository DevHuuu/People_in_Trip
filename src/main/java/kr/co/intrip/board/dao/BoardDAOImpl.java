package kr.co.intrip.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import kr.co.intrip.board.dto.BoardDTO;

@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<BoardDTO> selectAllBoardList() throws DataAccessException {
		List<BoardDTO> boardsList = sqlSession.selectList("mapper.board.selectAllBoardList");
		return boardsList;
	}
}
