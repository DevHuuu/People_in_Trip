package kr.co.intrip.main.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.intrip.login_signup.dto.MemberDTO;
import kr.co.intrip.main.dao.MainDAO;
import kr.co.intrip.main.dto.MainDTO;

@Service("mainService")
public class MainServiceImpl implements MainService {
	
	@Autowired
	private MainDAO mainDAO;

	@Override
	public List<MainDTO> listMain() throws Exception {
		List<MainDTO> mainsList = mainDAO.selectBoardList();
		return mainsList;
	}

}
