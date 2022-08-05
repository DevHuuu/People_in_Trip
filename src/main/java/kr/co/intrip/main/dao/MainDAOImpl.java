package kr.co.intrip.main.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import kr.co.intrip.main.dto.MainDTO;

@Repository("mainDAO")
public class MainDAOImpl implements MainDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<MainDTO> selectBoardList() throws DataAccessException {
		List<MainDTO> mainsList = sqlSession.selectList("mapper.main.selectBoardList");
		return mainsList;
	}

}
