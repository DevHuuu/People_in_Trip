package kr.co.intrip.tourist.service;

import java.util.Map;

public interface TouristService {

	Map<String, Integer> listArticles(Map<String, Integer> pagingMap) throws Exception;

}
