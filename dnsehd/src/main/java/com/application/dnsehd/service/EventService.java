package com.application.dnsehd.service;

import java.util.List;

import com.application.dnsehd.dto.EventDTO;
import com.application.dnsehd.dto.ClassDTO;

public interface EventService {

	public List<EventDTO> getEventList();
	public void addEvent(EventDTO eventDTO);
	public List<ClassDTO> getClassList();

}
