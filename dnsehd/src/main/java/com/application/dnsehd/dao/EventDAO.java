package com.application.dnsehd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.EventDTO;
import com.application.dnsehd.dto.EventImgDTO;
import com.application.dnsehd.dto.TeacherDTO;
import com.application.dnsehd.dto.ClassDTO;

@Mapper
public interface EventDAO {

	public List<EventDTO> selectEventList();
	public void insertEvent(EventDTO eventDTO);
	public List<ClassDTO> selectClassList();
	public EventDTO selectEventDetail(int eventNo);
	public void updateEvent(EventDTO eventDTO);
	public void deleteEvent(int eventNo);
	public TeacherDTO selectTeacherDetail();
	public ClassDTO selectClassDetail(int eventNo);

}
