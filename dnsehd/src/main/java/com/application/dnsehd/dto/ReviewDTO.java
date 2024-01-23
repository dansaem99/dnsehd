package com.application.dnsehd.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ReviewDTO {
	
	int reviewNo;
	String reviewTitle;
	String reviewContent;
	int reviewScore;
	Date reviewDt;
	String memberId;
//	int classNo;
//	int resvNo;
	
}
