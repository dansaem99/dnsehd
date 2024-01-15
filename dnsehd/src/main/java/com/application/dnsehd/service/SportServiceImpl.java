package com.application.dnsehd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.dnsehd.dao.SportDAO;
import com.application.dnsehd.dto.SportDTO;

@Service
public class SportServiceImpl implements SportService {

	@Autowired
	private SportDAO sportDAO;
	
	@Override
	public List<SportDTO> getClassList() {
		return sportDAO.selectClassList();
	}

	@Override
	public String admin() {
		// TODO Auto-generated method stub
		return null;
	}

}
