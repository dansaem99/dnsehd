package com.application.dnsehd.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
	public List<TeacherDTO> adminTeacherList() {
		return teacherDAO.selectAdminTeacherList();
	}
	
	@Override
	public List<TeacherDTO> getTeacherList(Map<String, Object> searchMap) {
		return teacherDAO.selectTeacherList(searchMap);
	}

	@Override
	public int getAllTeacherCnt(String searchWord) {
		return teacherDAO.getAllTeacherCnt(searchWord);
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

	@Override
	public void addTeacherDummy() {
		
		List<TeacherDTO> dummyTeacherList = new ArrayList<TeacherDTO>();
		
		for (int i = 1; i < 200; i++) {
			
			String teacherNm      = "이름";
			String teacherBirth   = "생일";
			String teacherHp      = "전화번호";   
			String teacherCareer  = "커리어";
			String teacherIntro   = "한줄소개";
			String adminId        = "admin";
			
			teacherNm      += i; 
			teacherBirth   += i;
			teacherHp      += i;
			teacherCareer  += i;
			teacherIntro   += i;
			
			TeacherDTO temp = new TeacherDTO();
			temp.setTeacherNo(i);
			temp.setTeacherNm(teacherNm);
			temp.setTeacherBirth(teacherBirth);
			temp.setTeacherHp(teacherHp);
			temp.setTeacherCareer(teacherCareer);
			temp.setTeacherIntro(teacherIntro);
			temp.setAdminId(adminId);
			
			dummyTeacherList.add(temp);
		}
		
		teacherDAO.insertTeacherDummy(dummyTeacherList);
		
	}
	
}
