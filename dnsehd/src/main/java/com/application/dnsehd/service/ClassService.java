package com.application.dnsehd.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.ClassImgDTO;
import com.application.dnsehd.dto.TeacherDTO;

public interface ClassService {

	public void addClass(MultipartFile uploadProfile, ClassDTO classDTO, ClassImgDTO classImgDTO) throws IllegalStateException, IOException;
	public List<Map<String, Object>> adminClassList();
	public List<Map<String, Object>> getClassList(Map<String, Object> searchMap);
	public int getAllClassCnt();
	public Map<String, Object> getClassDetail(int classNo);
	public void modifyClassDetail(MultipartFile uploadProfile, ClassDTO classDTO, ClassImgDTO classImgDTO) throws IllegalStateException, IOException;
	public void removeOneClass(int classNo);
	public List<TeacherDTO> getTeacherList();
	public TeacherDTO getTeacherDetail();
	public List<Map<String, Object>> getClassSearchList(Map<String, String> searchMap);
	public List<Map<String, Object>> getClassCheckList(String[] categotyArrayl);

}
