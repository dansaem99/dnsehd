package com.application.dnsehd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.TeacherDTO;

@Mapper
public interface TeacherDAO {
	
	public void insertTeacher(TeacherDTO teacherDTO);
	public List<TeacherDTO> selectTeacherList();
	public TeacherDTO selectTeacherDetail(int teacherNo);
	public void updateTeacher(TeacherDTO teacherDTO);
	public void deleteTeacher(int teacherNo);
	
}
