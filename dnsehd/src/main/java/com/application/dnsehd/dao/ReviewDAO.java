package com.application.dnsehd.dao;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.ReviewDTO;

@Mapper
public interface ReviewDAO {
	
	public void insertReview(ReviewDTO reviewDTO);
}
