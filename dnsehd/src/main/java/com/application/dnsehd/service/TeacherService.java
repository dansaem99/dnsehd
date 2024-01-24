package com.application.dnsehd.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.TeacherDTO;
import com.application.dnsehd.dto.TeacherImgDTO;

public interface TeacherService {

	public void addTeacherDetail(MultipartFile uploadProfile, TeacherDTO teacherDTO, TeacherImgDTO teacherImgDTO) throws IllegalStateException, IOException;
	public List<TeacherDTO> adminTeacherList();
	public List<Map<String, Object>> getTeacherList(Map<String, Object> searchMap);
	public int getAllTeacherCnt(String searchWord);
	public Map<String, Object> getTeacherDetail(int teacherNo);
	public void modifyTeacherDetail(MultipartFile uploadProfile, TeacherDTO teacherDTO, TeacherImgDTO teacherImgDTO) throws IllegalStateException, IOException;
	public void removeOneTeacher(int teacherNo);
	public List<Map<String, Object>> getTeacherOwnClassList(int teacherNo);
	public void addTeacherDummy();
	
}
