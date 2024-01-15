package com.application.dnsehd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.dnsehd.dao.EventDAO;
import com.application.dnsehd.dto.EventDTO;
import com.application.dnsehd.dto.SportDTO;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventDAO eventDAO;
	
	@Override
	public List<EventDTO> getEventList() {
		return eventDAO.selectEventList();
	}

	@Override
	public void addEvent(EventDTO eventDTO) {
		eventDAO.insertEvent(eventDTO);
	}

	@Override
	public List<SportDTO> getSportList() {
		return eventDAO.selectSportList();
	}

}
