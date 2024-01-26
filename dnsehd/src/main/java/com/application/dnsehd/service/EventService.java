package com.application.dnsehd.service;

import java.util.List;
import java.util.Map;

import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.EventDTO;
import com.application.dnsehd.dto.ReviewDTO;
import com.application.dnsehd.dto.TeacherDTO;

public interface EventService {

	public List<EventDTO> getEventList();
	public void addEventDetail(EventDTO eventDTO);
	public List<ClassDTO> getClassList();
	public Map<String, Object> getEventDetail(int eventNo);
	public void modifyEventDetail(EventDTO eventDTO);
	public void removeOneEvent(int eventNo);
	public TeacherDTO getTeacherDetail();
	public ClassDTO getClassDetail(int eventNo);
	public List<ReviewDTO> getReviewList(int eventNo);

}
