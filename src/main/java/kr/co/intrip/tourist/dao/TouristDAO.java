package kr.co.intrip.tourist.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.intrip.tourist.dto.TouristDTO;

@Repository
public class TouristDAO {

	@Autowired
	SqlSession sqlSession;

	public int selectTotArticles() {
		
		int totArticles = sqlSession.selectOne("mapper.tourist.selectTotArticles");
		return totArticles;
	}

	public List<TouristDTO> selectAllArticlesList(Map<String, Integer> pagingMap) {
		List<TouristDTO> touristList = sqlSession.selectList("mapper.tourist.selectAllArticlesList", pagingMap);
		return touristList;
	}
	
}
