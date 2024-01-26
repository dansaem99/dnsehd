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
import com.application.dnsehd.dto.ReviewDTO;
import com.application.dnsehd.dto.TeacherDTO;

@Service
public class ClassServiceImpl implements ClassService {
	
	@Value("${file.repo.path}")
    private String fileRepositoryPath;

	@Autowired
	private ClassDAO classDAO;
	
	@Override
	public List<Map<String, Object>> adminClassList() {
		return classDAO.selectAdminClassList();
	}
	
	@Override
	public List<Map<String, Object>> getClassList(Map<String, Object> searchMap) {
		return classDAO.selectClassList(searchMap);
	}

	@Override
	@Transactional 
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
		classImgDTO.setClassNo(classNo);
		classDAO.insertClassImg(classImgDTO);
	}

	@Override
	@Transactional
	public Map<String, Object> getClassDetail(int classNo) {
		return classDAO.selectClassDetail(classNo);
	}

	@Override
	public void modifyClassDetail(MultipartFile uploadProfile, ClassDTO classDTO, ClassImgDTO classImgDTO) throws IllegalStateException, IOException {
		
		if (!uploadProfile.getOriginalFilename().isEmpty()) {
			
			new File(fileRepositoryPath + classImgDTO.getClassImgUUID()).delete();
			
			String originalFilename = uploadProfile.getOriginalFilename();
			classImgDTO.setClassImgNm(originalFilename);
			
			String extension = originalFilename.substring(originalFilename.lastIndexOf("."));
			
			String uploadFile = UUID.randomUUID() + extension;
			classImgDTO.setClassImgUUID(uploadFile);
			
			uploadProfile.transferTo(new File(fileRepositoryPath + uploadFile));
			
		}
		
		classDAO.updateClass(classDTO);
		classDAO.updateClassImg(classImgDTO);
	}

	@Override
	public void removeOneClass(int classNo) {
		classDAO.deleteClassImg(classNo);
		classDAO.deleteClass(classNo);
	}

	@Override
	public List<TeacherDTO> getTeacherList() {
		return classDAO.selectTeacherList();
	}

	@Override
	public List<Map<String, Object>> getClassSearchList(Map<String, String> searchMap) {
		return classDAO.selectListSearchClass(searchMap);
	}
	
	@Override
	public List<Map<String, Object>> getClassCheckList(String[] categotyArrayl) {
		return classDAO.selectcheckClass(categotyArrayl);
	}

	@Override
	public int getAllClassCnt() {
		return classDAO.getAllClassCnt();
	}

	@Override
	public List<ReviewDTO> getReviewList(int classNo) {
		return classDAO.selectReviewList(classNo);
	}

	@Override
	public int getReviewScore(int classNo) {
		return classDAO.selectReviewScore(classNo);
	}


}
