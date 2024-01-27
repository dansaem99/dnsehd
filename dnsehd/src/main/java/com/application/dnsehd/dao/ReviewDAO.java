package com.application.dnsehd.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.ReviewDTO;
import com.application.dnsehd.dto.ReviewImgDTO;

@Mapper
public interface ReviewDAO {
	
	public List<ClassDTO> selectClassList(String memberId);
	public List<Map<String, Object>> selectMyResvList(String memberId);
	public int getSelectedResvNo(int reviewNo);
	public int getSelectedClassNo(int classNo);
	public void insertReview(ReviewDTO reviewDTO);
	public void insertReviewImg(ReviewImgDTO reviewImgDTO);
	public List<Map<String, Object>> selectReviewList();
	public Map<String, Object> selectReviewDetail(int reviewNo);
	public List<ReviewDTO> selectMyReviewList();
	public List<ReviewDTO> selectMyReviewList(String memberId);
	public void updateMyReview(ReviewDTO reviewDTO);
	public void updateMyReviewImg(ReviewImgDTO reviewImgDTO);
	public void deleteReview(int reviewNo);
	public void deleteReviewImg(int reviewNo);
}
