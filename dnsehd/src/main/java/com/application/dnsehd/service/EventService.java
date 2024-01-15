package com.application.dnsehd.service;

import java.util.List;

import com.application.dnsehd.dto.EventDTO;

public interface EventService {

	public List<EventDTO> getEventList();
	public void addEvent(EventDTO eventDTO);

}
