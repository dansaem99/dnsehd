package com.application.dnsehd.service;

import java.util.List;

import com.application.dnsehd.dto.TeacherDTO;

public interface TeacherService {

	public void addTeacherDetail(TeacherDTO teacherDTO);
	public List<TeacherDTO> getTeacherList();
	public TeacherDTO getTeacherDetail(int teacherNo);
	public void modifyTeacherDetail(TeacherDTO teacherDTO);
	public void removeOneTeacher(int teacherNo);
}
