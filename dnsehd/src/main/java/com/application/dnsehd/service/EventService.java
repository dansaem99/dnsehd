package com.application.dnsehd.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.application.dnsehd.dto.EventDTO;
import com.application.dnsehd.dto.EventImgDTO;
import com.application.dnsehd.dto.TeacherDTO;
import com.application.dnsehd.dto.ClassDTO;

public interface EventService {

	public List<EventDTO> getEventList();
	public void addEventDetail(EventDTO eventDTO);
	public List<ClassDTO> getClassList();
	public EventDTO getEventDetail(int eventNo);
	public void modifyEventDetail(EventDTO eventDTO);
	public void removeOneEvent(int eventNo);
	public TeacherDTO getTeacherDetail();
	public ClassDTO getClassDetail(int eventNo);

}
