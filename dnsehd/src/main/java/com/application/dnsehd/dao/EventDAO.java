package com.application.dnsehd.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.EventDTO;
import com.application.dnsehd.dto.ReviewDTO;
import com.application.dnsehd.dto.TeacherDTO;

@Mapper
public interface EventDAO {

	public List<EventDTO> selectEventList();
	public void insertEvent(EventDTO eventDTO);
	public List<ClassDTO> selectClassList();
	public Map<String, Object> selectEventDetail(int eventNo);
	public void updateEvent(EventDTO eventDTO);
	public void deleteEvent(int eventNo);
	public TeacherDTO selectTeacherDetail();
	public ClassDTO selectClassDetail(int eventNo);
	public List<ReviewDTO> selectReviewList(int eventNo);
	public int selectReviewScore(int eventNo);

}
