package com.application.dnsehd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.TeacherDTO;

@Mapper
public interface ClassDAO {

	public List<ClassDTO> selectClassList();
	public void insertClass(ClassDTO classDTO);
	public ClassDTO selectClassDetail(int classNo);
	public void updateClass(ClassDTO classDTO);
	public void deleteClass(int classNo);
	public List<TeacherDTO> selectTeacherList();

}