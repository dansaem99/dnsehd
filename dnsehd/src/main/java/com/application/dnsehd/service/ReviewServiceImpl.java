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

import com.application.dnsehd.dao.ReviewDAO;
import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.ReservationDTO;
import com.application.dnsehd.dto.ReviewDTO;
import com.application.dnsehd.dto.ReviewImgDTO;


@Service
public class ReviewServiceImpl implements ReviewService {

	@Value("${file.repo.path}")
    private String fileRepositoryPath;
	
	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public List<ClassDTO> getClassList(String memberId) {
		return reviewDAO.selectClassList(memberId);
	}	
	
	@Override
	public List<Map<String, Object>> getMyResvList(String memberId) {
		return reviewDAO.selectMyResvList(memberId);
	}

	@Override
	public int getSelectedResvNo(int reviewNo) {
		return reviewDAO.getSelectedResvNo(reviewNo);
	}
	
	public int getSelectedClassNo(int reviewNo) {
		return reviewDAO.getSelectedClassNo(reviewNo);
	}
	
	@Override
	public void addReview(MultipartFile uploadProfile, ReviewDTO reviewDTO, ReviewImgDTO reviewImgDTO) throws IllegalStateException, IOException {
		
		if (!uploadProfile.getOriginalFilename().isEmpty()) {
			String originalFilename = uploadProfile.getOriginalFilename();
			reviewImgDTO.setReviewImgNm(originalFilename);
			
			String extension = originalFilename.substring(originalFilename.lastIndexOf("."));
			
			String uploadFile = UUID.randomUUID() + extension;
			reviewImgDTO.setReviewImgUUID(uploadFile);
			
			uploadProfile.transferTo(new File(fileRepositoryPath + uploadFile));
		}
		
		reviewDAO.insertReview(reviewDTO);
		int reviewNo = reviewDTO.getReviewNo();
		reviewImgDTO.setReviewNo(reviewNo);
		reviewDAO.insertReviewImg(reviewImgDTO);
	}

	@Override
	public List<Map<String, Object>> getReviewList() {
		return reviewDAO.selectReviewList();
	}

	@Override
	@Transactional
	public Map<String, Object> getReviewDetail(int reviewNo) {
		return reviewDAO.selectReviewDetail(reviewNo);
	}

	@Override
	public List<ReviewDTO> getMyReviewList(String memberId) {
		return reviewDAO.selectMyReviewList(memberId);
	}

	@Override
	public void modifyMyReviewDetail(MultipartFile uploadProfile, ReviewDTO reviewDTO, ReviewImgDTO reviewImgDTO) throws IllegalStateException, IOException {
		if (!uploadProfile.getOriginalFilename().isEmpty()) {
			
			new File(fileRepositoryPath + reviewImgDTO.getReviewImgUUID()).delete();
			
			String originalFilename = uploadProfile.getOriginalFilename();
			reviewImgDTO.setReviewImgNm(originalFilename);
			
			String extension = originalFilename.substring(originalFilename.lastIndexOf("."));
			
			String uploadFile = UUID.randomUUID() + extension;
			reviewImgDTO.setReviewImgUUID(uploadFile);
			
			uploadProfile.transferTo(new File(fileRepositoryPath + uploadFile));
			
		}
		
		reviewDAO.updateMyReview(reviewDTO);
		reviewDAO.updateMyReviewImg(reviewImgDTO);
	}

	@Override
	public void removeMyReview(int reviewNo) {
		reviewDAO.deleteReviewImg(reviewNo);
		reviewDAO.deleteReview(reviewNo);
	}

}
