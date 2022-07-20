package kr.co.intrip.tourist.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TouristDAO {

	@Autowired
	SqlSession sqlSession;
	
}
