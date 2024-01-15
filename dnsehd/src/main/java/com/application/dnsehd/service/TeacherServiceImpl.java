package com.application.dnsehd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	public List<TeacherDTO> getTeacherList() {
		return teacherDAO.selectTeacherList();
	}

	@Override
	@Transactional
	public TeacherDTO getTeacherDetail(int teacherNo) {
		return teacherDAO.selectTeacherDetail(teacherNo);
	}
	
	public void modifyTeacherDetail(TeacherDTO teacherDTO) {
		teacherDAO.updateTeacher(teacherDTO);
	}

	@Override
	public void removeOneTeacher(int teacherNo) {
		teacherDAO.deleteTeacher(teacherNo);
	}
	
}
