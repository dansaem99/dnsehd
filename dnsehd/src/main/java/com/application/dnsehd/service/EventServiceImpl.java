package com.application.dnsehd.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.application.dnsehd.dao.EventDAO;
import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.EventDTO;
import com.application.dnsehd.dto.ReviewDTO;
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
	@Transactional
	public Map<String, Object> getEventDetail(int eventNo) {
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

	@Override
	public List<ReviewDTO> getReviewList(int eventNo) {
		return eventDAO.selectReviewList(eventNo);
	}

	@Override
	public int getReviewScore(int eventNo) {
		return eventDAO.selectReviewScore(eventNo);
	}

}
