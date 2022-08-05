package kr.co.intrip.tourist.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.intrip.tourist.dao.TouristDAO;
import kr.co.intrip.tourist.dto.TouristDTO;

@Service
public class TouristServiceImpl implements TouristService {

	@Autowired
	private TouristDAO touristDAO;

	@Override
	public Map<String, Integer> listArticles(Map<String, Integer> pagingMap) throws Exception {

		Map touristMap = new HashMap();
		
		List<TouristDTO> touristList = touristDAO.selectAllArticlesList(pagingMap);
		int totArticles = touristDAO.selectTotArticles();
		
		touristMap.put("touristList", touristList);
		touristMap.put("totArticles", totArticles);
			
		return touristMap;
		
	}
	
}
