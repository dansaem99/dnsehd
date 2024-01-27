package com.application.dnsehd.service;

import java.util.List;
import java.util.Map;

import com.application.dnsehd.dto.EventDTO;

public interface MainService {

	public List<EventDTO> getEventList();
	public List<Map<String, Object>> getClassList();

}
