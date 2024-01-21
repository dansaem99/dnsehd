package com.application.dnsehd.service;

import java.util.List;

import com.application.dnsehd.dto.ReviewDTO;

public interface ReviewService {

	public void addReview(ReviewDTO reviewDTO);
	public List<ReviewDTO> getReviewList();
	public ReviewDTO getReviewDetail(int reviewNo);
	public List<ReviewDTO> getMyReviewList(String memberId);
	public void modifyMyReviewDetail(ReviewDTO reviewDTO);	
	public void removeMyReview(int reviewNo);
}
