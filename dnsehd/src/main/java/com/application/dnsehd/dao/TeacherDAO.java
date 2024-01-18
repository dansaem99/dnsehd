package com.application.dnsehd.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.TeacherDTO;

@Mapper
public interface TeacherDAO {
	
	public int getAllTeacherCnt(String searchWord);
	public void insertTeacher(TeacherDTO teacherDTO);
	public List<TeacherDTO> selectAdminTeacherList();
	public List<TeacherDTO> selectTeacherList(Map<String, Object> searchMap);
	public TeacherDTO selectTeacherDetail(int teacherNo);
	public void updateTeacher(TeacherDTO teacherDTO);
	public void deleteTeacher(int teacherNo);
	public void insertTeacherDummy(List<TeacherDTO> dummyTeacherList);
}
