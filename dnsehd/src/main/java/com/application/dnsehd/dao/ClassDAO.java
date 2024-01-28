package com.application.dnsehd.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.ClassImgDTO;
import com.application.dnsehd.dto.ReviewDTO;
import com.application.dnsehd.dto.TeacherDTO;

@Mapper
public interface ClassDAO {

	public int getAllClassCnt();//
	public void insertClass(ClassDTO classDTO);//
	public void insertClassImg(ClassImgDTO classImgDTO);//
	public List<ClassDTO> selectAdminClassList();
	public List<Map<String, Object>> selectClassList(Map<String, Object> searchMap);
	public Map<String, Object> selectClassDetail(int classNo);
	public void updateClass(ClassDTO classDTO);
	public void updateClassImg(ClassImgDTO classImgDTO);
	public void deleteResv(int classNo);
	public void deleteReview(int classNo);
	public void deleteReviewImg(int classNo);
	public void deleteClass(int classNo);
	public void deleteClassImg(int classNo);
	public List<TeacherDTO> selectTeacherList();
	public List<Map<String, Object>> selectListSearchClass(Map<String, String> searchMap);
	public List<Map<String, Object>> selectcheckClass(String[] categotyArrayl);
	public List<ReviewDTO> selectReviewList(int classNo);
	public int selectReviewScore(int classNo);

}
