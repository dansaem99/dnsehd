package com.application.dnsehd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.dnsehd.dao.TeacherDAO;
import com.application.dnsehd.dto.TeacherDTO;

@Service
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	private TeacherDAO teacherDAO;

	@Override
	public void addTeacherDetail(TeacherDTO teacherDTO) {
		teacherDAO.insertTeacher(teacherDTO);
	}
	
}
