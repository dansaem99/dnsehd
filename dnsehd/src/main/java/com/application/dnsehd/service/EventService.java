package com.application.dnsehd.service;

import java.util.List;

import com.application.dnsehd.dto.EventDTO;
import com.application.dnsehd.dto.SportDTO;

public interface EventService {

	public List<EventDTO> getEventList();
	public void addEvent(EventDTO eventDTO);
	public List<SportDTO> getSportList();

}
