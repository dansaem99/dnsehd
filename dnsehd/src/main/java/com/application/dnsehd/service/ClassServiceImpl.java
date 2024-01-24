package com.application.dnsehd.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.application.dnsehd.dao.ClassDAO;
import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.ClassImgDTO;
import com.application.dnsehd.dto.TeacherDTO;

@Service
public class ClassServiceImpl implements ClassService {
	
	@Value("${file.repo.path}")
    private String fileRepositoryPath;

	@Autowired
	private ClassDAO classDAO;
	
	@Override
	public List<ClassDTO> getClassList() {
		return classDAO.selectClassList();
	}

	@Override
	public void addClass(MultipartFile uploadProfile, ClassDTO classDTO, ClassImgDTO classImgDTO) throws IllegalStateException, IOException {
		
		if (!uploadProfile.getOriginalFilename().isEmpty()) {
			String originalFilename = uploadProfile.getOriginalFilename();
			classImgDTO.setClassImgNm(originalFilename);
			
			String extension = originalFilename.substring(originalFilename.lastIndexOf("."));
			
			String uploadFile = UUID.randomUUID() + extension;
			classImgDTO.setClassImgUUID(uploadFile);
			
			uploadProfile.transferTo(new File(fileRepositoryPath + uploadFile));
		}
		
		classDAO.insertClass(classDTO);
		int classNo = classDTO.getClassNo();
	}

	@Override
	@Transactional
	public ClassDTO getClassDetail(int classNo) {
		return classDAO.selectClassDetail(classNo);
	}

	@Override
	public void modifyClassDetail(ClassDTO classDTO) {
		classDAO.updateClass(classDTO);
	}

	@Override
	public void removeOneClass(int classNo) {
		classDAO.deleteClass(classNo);
	}

	@Override
	public List<TeacherDTO> getTeacherList() {
		return classDAO.selectTeacherList();
	}

	@Override
	@Transactional
	public TeacherDTO getTeacherDetail() {
		return classDAO.selectTeacherDetail();
	}

	@Override
	public List<ClassDTO> getClassSearchList(Map<String, String> searchMap) {
		return classDAO.selectListSearchClass(searchMap);
	}
	
	@Override
	public List<ClassDTO> getClassCheckList(String[] categotyArrayl) {
		return classDAO.selectcheckClass(categotyArrayl);
	}

}
