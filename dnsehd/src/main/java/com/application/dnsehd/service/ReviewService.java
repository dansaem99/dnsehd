package com.application.dnsehd.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.application.dnsehd.dto.ReviewDTO;
import com.application.dnsehd.dto.ReviewImgDTO;

public interface ReviewService {

	public void addReview(MultipartFile uploadProfile, ReviewDTO reviewDTO, ReviewImgDTO reviewImgDTO) throws IllegalStateException, IOException;
	public List<ReviewDTO> getReviewList();
	public ReviewDTO getReviewDetail(int reviewNo);
	public List<ReviewDTO> getMyReviewList(String memberId);
	public void modifyMyReviewDetail(MultipartFile uploadProfile, ReviewDTO reviewDTO, ReviewImgDTO reviewImgDTO) throws IllegalStateException, IOException;
	public void removeMyReview(int reviewNo);
}
