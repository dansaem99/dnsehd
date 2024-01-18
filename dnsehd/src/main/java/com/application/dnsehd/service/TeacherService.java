package com.application.dnsehd.service;

import java.util.List;
import java.util.Map;

import com.application.dnsehd.dto.TeacherDTO;

public interface TeacherService {

	public void addTeacherDetail(TeacherDTO teacherDTO);
	public List<TeacherDTO> adminTeacherList();
	public List<TeacherDTO> getTeacherList(Map<String, Object> searchMap);
	public int getAllTeacherCnt(String searchWord);
	public TeacherDTO getTeacherDetail(int teacherNo);
	public void modifyTeacherDetail(TeacherDTO teacherDTO);
	public void removeOneTeacher(int teacherNo);
	public void addTeacherDummy();
	
}
