package com.application.dnsehd.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.application.dnsehd.dao.TeacherDAO;
import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.TeacherDTO;
import com.application.dnsehd.dto.TeacherImgDTO;

@Service
public class TeacherServiceImpl implements TeacherService {

	@Value("${file.repo.path}")
    private String fileRepositoryPath;
	
	@Autowired
	private TeacherDAO teacherDAO;

	@Transactional 
	@Override
	public void addTeacherDetail(MultipartFile uploadProfile , TeacherDTO teacherDTO, TeacherImgDTO teacherImgDTO) throws IllegalStateException, IOException {
		
		if (!uploadProfile.getOriginalFilename().isEmpty()) {
			String originalFilename = uploadProfile.getOriginalFilename();
			teacherImgDTO.setTeacherImgNm(originalFilename);
			
			String extension = originalFilename.substring(originalFilename.lastIndexOf("."));
			
			String uploadFile = UUID.randomUUID() + extension;
			teacherImgDTO.setTeacherImgUUID(uploadFile);
			
			uploadProfile.transferTo(new File(fileRepositoryPath + uploadFile));
		}
		
		teacherDAO.insertTeacher(teacherDTO);
		int teacherNo = teacherDTO.getTeacherNo();
		teacherImgDTO.setTeacherNo(teacherNo);
		teacherDAO.insertTeacherImg(teacherImgDTO);
	}

	@Override
	public List<TeacherDTO> adminTeacherList() {
		return teacherDAO.selectAdminTeacherList();
	}
	
	@Override
	public List<Map<String, Object>> getTeacherList(Map<String, Object> searchMap) {
		return teacherDAO.selectTeacherList(searchMap);
	}

	@Override
	public int getAllTeacherCnt(String searchWord) {
		return teacherDAO.getAllTeacherCnt(searchWord);
	}
	
	@Override
	@Transactional
	public Map<String, Object> getTeacherDetail(int teacherNo) {
		return teacherDAO.selectTeacherDetail(teacherNo);
	}
	
	public void modifyTeacherDetail(MultipartFile uploadProfile, TeacherDTO teacherDTO, TeacherImgDTO teacherImgDTO) throws IllegalStateException, IOException {
		
		if (!uploadProfile.getOriginalFilename().isEmpty()) {
			
			new File(fileRepositoryPath + teacherImgDTO.getTeacherImgUUID()).delete();
			
			String originalFilename = uploadProfile.getOriginalFilename();
			teacherImgDTO.setTeacherImgNm(originalFilename);
			
			String extension = originalFilename.substring(originalFilename.lastIndexOf("."));
			
			String uploadFile = UUID.randomUUID() + extension;
			teacherImgDTO.setTeacherImgUUID(uploadFile);
			
			uploadProfile.transferTo(new File(fileRepositoryPath + uploadFile));
			
		}
			
		teacherDAO.updateTeacher(teacherDTO);
		teacherDAO.updateTeacherImg(teacherImgDTO);
	}

	@Override
	public void removeOneTeacher(int teacherNo) {
		teacherDAO.deleteCorespondReviewImg(teacherNo);
		teacherDAO.deleteCorespondReview(teacherNo);
		teacherDAO.deleteCorespondResv(teacherNo);
		teacherDAO.deleteCorespondClassImg(teacherNo);
		teacherDAO.deleteCorespondClass(teacherNo);
		teacherDAO.deleteTeacherImg(teacherNo);
		teacherDAO.deleteTeacher(teacherNo);
	}
	
	@Override
	public List<Map<String, Object>> getTeacherOwnClassList(int teacherNo) {
		return teacherDAO.selectTeacherOwnClassList(teacherNo);
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
