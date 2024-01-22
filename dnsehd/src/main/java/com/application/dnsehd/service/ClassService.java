package com.application.dnsehd.service;

import java.util.List;
import java.util.Map;

import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.TeacherDTO;

public interface ClassService {

	public List<ClassDTO> getClassList();
	public void addClass(ClassDTO classDTO);
	public ClassDTO getClassDetail(int classNo);
	public void modifyClassDetail(ClassDTO classDTO);
	public void removeOneClass(int classNo);
	public List<TeacherDTO> getTeacherList();
	public TeacherDTO getTeacherDetail();
	public List<ClassDTO> getClassSearchList(Map<String, String> searchMap);
	public List<ClassDTO> getClassCheckList(String[] categotyArrayl);

}
