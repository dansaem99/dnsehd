package com.application.dnsehd.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.ReviewDTO;
import com.application.dnsehd.dto.ReviewImgDTO;

public interface ReviewService {

	public List<ClassDTO> getClassList(String memberId);
	public List<Map<String, Object>> getMyResvList(String memberId);
	public int getSelectedResvNo(int reviewNo);
	public int getSelectedClassNo(int reviewNo);
	public void addReview(MultipartFile uploadProfile, ReviewDTO reviewDTO, ReviewImgDTO reviewImgDTO) throws IllegalStateException, IOException;
	public List<Map<String, Object>> getReviewList();
	public Map<String, Object> getReviewDetail(int reviewNo);
	public List<ReviewDTO> getMyReviewList(String memberId);
	public void modifyMyReviewDetail(MultipartFile uploadProfile, ReviewDTO reviewDTO, ReviewImgDTO reviewImgDTO) throws IllegalStateException, IOException;
	public void removeMyReview(int reviewNo);
}
