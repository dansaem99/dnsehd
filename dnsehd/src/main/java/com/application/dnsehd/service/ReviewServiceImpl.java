package com.application.dnsehd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.application.dnsehd.dao.ReviewDAO;
import com.application.dnsehd.dto.ReviewDTO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public void addReview(ReviewDTO reviewDTO) {
		reviewDAO.insertReview(reviewDTO);
	}

	@Override
	public List<ReviewDTO> getReviewList() {
		return reviewDAO.selectReviewList();
	}

	@Override
	@Transactional
	public ReviewDTO getReviewDetail(int reviewNo) {
		return reviewDAO.selectReviewDetail(reviewNo);
	}

	@Override
	public List<ReviewDTO> getMyReviewList(String memberId) {
		return reviewDAO.selectMyReviewList(memberId);
	}

	@Override
	public void modifyMyReviewDetail(ReviewDTO reviewDTO) {
		reviewDAO.updateMyReview(reviewDTO);
	}

	@Override
	public void removeMyReview(int reviewNo) {
		reviewDAO.deleteReview(reviewNo);
	}
	
	
	

}
