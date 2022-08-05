package kr.co.intrip.tourist.service;

<<<<<<< HEAD
import java.util.Map;

public interface TouristService {

	Map<String, Integer> listArticles(Map<String, Integer> pagingMap) throws Exception;
=======
import java.io.IOException;
import java.util.ArrayList;

import kr.co.intrip.tourist.dto.ApiDTO;

public interface TouristService {

	// 관광지 api db에 저장용
	public void parkApi(String schAirportCode) throws IOException;
>>>>>>> 09a95fba8bc3fc5e1e4bac191be24ad33ecbc270

}
