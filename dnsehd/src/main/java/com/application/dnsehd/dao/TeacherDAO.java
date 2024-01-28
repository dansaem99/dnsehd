package com.application.dnsehd.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.TeacherDTO;
import com.application.dnsehd.dto.TeacherImgDTO;

@Mapper
public interface TeacherDAO {
	
	public int getAllTeacherCnt(String searchWord);
	public int insertTeacher(TeacherDTO teacherDTO);
	public void insertTeacherImg(TeacherImgDTO teacherImgDTO);
	public List<TeacherDTO> selectAdminTeacherList();
	public List<Map<String, Object>> selectTeacherList(Map<String, Object> searchMap);
	public Map<String, Object> selectTeacherDetail(int teacherNo);
	public void updateTeacher(TeacherDTO teacherDTO);
	public void updateTeacherImg(TeacherImgDTO teacherImgDTO);
	public void deleteCorespondReviewImg(int teacherNo);
	public void deleteCorespondReview(int teacherNo);
	public void deleteCorespondResv(int teacherNo);
	public void deleteCorespondClassImg(int teacherNo);
	public void deleteCorespondClass(int teacherNo);
	public void deleteTeacher(int teacherNo);
	public void deleteTeacherImg(int teacherNo);
	public List<Map<String, Object>> selectTeacherOwnClassList(int teacherNo);
	public void insertTeacherDummy(List<TeacherDTO> dummyTeacherList);
}
