package com.application.dnsehd.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.application.dnsehd.dao.EventDAO;
import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.EventDTO;
import com.application.dnsehd.dto.EventImgDTO;
import com.application.dnsehd.dto.TeacherDTO;

@Service
public class EventServiceImpl implements EventService {
	
	@Autowired
	private EventDAO eventDAO;
	
	@Override
	public List<EventDTO> getEventList() {
		return eventDAO.selectEventList();
	}

	@Override
	public void addEventDetail(EventDTO eventDTO){
		
		eventDAO.insertEvent(eventDTO);
		
	}

	@Override
	public List<ClassDTO> getClassList() {
		return eventDAO.selectClassList();
	}

	@Override
	public EventDTO getEventDetail(int eventNo) {
		return eventDAO.selectEventDetail(eventNo);
	}

	@Override
	public void modifyEventDetail(EventDTO eventDTO) {
		eventDAO.updateEvent(eventDTO);
	}

	@Override
	public void removeOneEvent(int eventNo) {
		eventDAO.deleteEvent(eventNo);
	}

	@Override
	public TeacherDTO getTeacherDetail() {
		return eventDAO.selectTeacherDetail();
	}

	@Override
	public ClassDTO getClassDetail(int eventNo) {
		return eventDAO.selectClassDetail(eventNo);
	}

}
