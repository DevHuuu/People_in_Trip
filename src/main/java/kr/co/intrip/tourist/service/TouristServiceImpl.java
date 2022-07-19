package kr.co.intrip.tourist.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.intrip.tourist.dao.TouristDAO;

@Service
public class TouristServiceImpl implements TouristService {

	@Autowired
	private TouristDAO touristDAO;
	
}
