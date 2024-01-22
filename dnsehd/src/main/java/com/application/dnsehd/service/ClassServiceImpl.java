package com.application.dnsehd.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.application.dnsehd.dao.ClassDAO;
import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.TeacherDTO;

@Service
public class ClassServiceImpl implements ClassService {

	@Autowired
	private ClassDAO classDAO;
	
	@Override
	public List<ClassDTO> getClassList() {
		return classDAO.selectClassList();
	}

	@Override
	public void addClass(ClassDTO classDTO) {
		classDAO.insertClass(classDTO);
	}

	@Override
	@Transactional
	public ClassDTO getClassDetail(int classNo) {
		return classDAO.selectClassDetail(classNo);
	}

	@Override
	public void modifyClassDetail(ClassDTO classDTO) {
		classDAO.updateClass(classDTO);
	}

	@Override
	public void removeOneClass(int classNo) {
		classDAO.deleteClass(classNo);
	}

	@Override
	public List<TeacherDTO> getTeacherList() {
		return classDAO.selectTeacherList();
	}

	@Override
	@Transactional
	public TeacherDTO getTeacherDetail() {
		return classDAO.selectTeacherDetail();
	}

	@Override
	public List<ClassDTO> getClassSearchList(Map<String, String> searchMap) {
		return classDAO.selectListSearchClass(searchMap);
	}
	
	@Override
	public List<ClassDTO> getClassCheckList(String[] categotyArrayl) {
		return classDAO.selectcheckClass(categotyArrayl);
	}

}
