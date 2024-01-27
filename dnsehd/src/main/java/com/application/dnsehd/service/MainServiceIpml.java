package com.application.dnsehd.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.dnsehd.dao.MainDAO;
import com.application.dnsehd.dto.EventDTO;

@Service
public class MainServiceIpml implements MainService {

	@Autowired
	private MainDAO mainDAO;

	@Override
	public List<EventDTO> getEventList() {
		return mainDAO.selectEventList();
	}

	@Override
	public List<Map<String, Object>> getClassList() {
		return mainDAO.selectClassList();
	}
	
}
