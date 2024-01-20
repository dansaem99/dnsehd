package com.application.dnsehd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.dnsehd.dao.ReviewDAO;
import com.application.dnsehd.dto.ReviewDTO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public void addReview(ReviewDTO reviewDTO) {
		// TODO Auto-generated method stub
		
	}
	

}
