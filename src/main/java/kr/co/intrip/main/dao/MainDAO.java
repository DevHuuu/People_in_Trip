package kr.co.intrip.main.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import kr.co.intrip.main.dto.MainDTO;

public interface MainDAO {

	public List<MainDTO> selectBoardList() throws DataAccessException;
}
