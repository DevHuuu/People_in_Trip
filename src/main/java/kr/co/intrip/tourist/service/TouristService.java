package kr.co.intrip.tourist.service;

import java.io.IOException;
import java.util.ArrayList;

import kr.co.intrip.tourist.dto.ApiDTO;

public interface TouristService {

	// 관광지 api
	public ArrayList<ApiDTO> parkApi(String schAirportCode) throws IOException;
}
