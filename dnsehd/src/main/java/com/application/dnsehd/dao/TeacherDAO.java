package com.application.dnsehd.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.TeacherDTO;
import com.application.dnsehd.dto.TeacherImgDTO;

@Mapper
public interface TeacherDAO {
	
	public int getAllTeacherCnt(String searchWord);
	public int insertTeacher(TeacherDTO teacherDTO);
	public void insertTeacherImg(TeacherImgDTO teacherImgDTO);
	public List<TeacherDTO> selectAdminTeacherList();
	public List<TeacherDTO> selectTeacherList(Map<String, Object> searchMap);
	public TeacherDTO selectTeacherDetail(int teacherNo);
	public void updateTeacher(TeacherDTO teacherDTO);
	public void deleteTeacher(int teacherNo);
	public void insertTeacherDummy(List<TeacherDTO> dummyTeacherList);
}
