package com.application.dnsehd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.application.dnsehd.dao.SportDAO;
import com.application.dnsehd.dto.SportDTO;
import com.application.dnsehd.dto.TeacherDTO;

@Service
public class SportServiceImpl implements SportService {

	@Autowired
	private SportDAO sportDAO;
	
	@Override
	public List<SportDTO> getClassList() {
		return sportDAO.selectClassList();
	}

	@Override
	public void addClass(SportDTO sportDTO) {
		sportDAO.insertClass(sportDTO);
	}

	@Override
	@Transactional
	public SportDTO getClassDetail(int sportNo) {
		return sportDAO.selectClassDetail(sportNo);
	}

	@Override
	public void modifyClassDetail(SportDTO sportDTO) {
		sportDAO.updateClass(sportDTO);
	}

	@Override
	public void removeOneClass(int sportNo) {
		sportDAO.deleteClass(sportNo);
	}

	@Override
	public List<TeacherDTO> getTeacherList() {
		return sportDAO.selectTeacherList();
	}
	
	

}
