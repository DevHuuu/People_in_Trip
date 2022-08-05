package kr.co.intrip.tourist.dao;

<<<<<<< HEAD
import java.util.List;
import java.util.Map;
=======
import java.util.ArrayList;
>>>>>>> 09a95fba8bc3fc5e1e4bac191be24ad33ecbc270

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD
=======
import kr.co.intrip.login_signup.dto.MemberDTO;
import kr.co.intrip.tourist.dto.ApiDTO;
>>>>>>> 09a95fba8bc3fc5e1e4bac191be24ad33ecbc270
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
	
	// 관광지 api db에 저장용
	public void touristadd(ArrayList<ApiDTO> list) {
		sqlSession.insert("mapper.tourist.touristadd", list);
		
	}
}
