package com.application.dnsehd.dao;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.TeacherDTO;

@Mapper
public interface TeacherDAO {
	
	public void insertTeacher(TeacherDTO teacherDTO);
	
}
