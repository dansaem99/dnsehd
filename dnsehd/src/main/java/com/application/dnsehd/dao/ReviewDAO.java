package com.application.dnsehd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.ReviewDTO;
import com.application.dnsehd.dto.ReviewImgDTO;

@Mapper
public interface ReviewDAO {
	
	public void insertReview(ReviewDTO reviewDTO);
	public void insertReviewImg(ReviewImgDTO reviewImgDTO);
	public List<ReviewDTO> selectReviewList();
	public ReviewDTO selectReviewDetail(int reviewNo);
	public List<ReviewDTO> selectMyReviewList();
	public List<ReviewDTO> selectMyReviewList(String memberId);
	public void updateMyReview(ReviewDTO reviewDTO);
	public void updateMyReviewImg(ReviewImgDTO reviewImgDTO);
	public void deleteReview(int reviewNo);
	public void deleteReviewImg(int reviewNo);
}
