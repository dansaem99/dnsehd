package com.application.dnsehd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.ReviewDTO;

@Mapper
public interface ReviewDAO {
	
	public void insertReview(ReviewDTO reviewDTO);
	public List<ReviewDTO> selectReviewList();
	public ReviewDTO selectReviewDetail(int reviewNo);
	public List<ReviewDTO> selectMyReviewList();
	public List<ReviewDTO> selectMyReviewList(String memberId);
	public void updateMyReview(ReviewDTO reviewDTO);
	public void deleteReview(int reviewNo);
}
