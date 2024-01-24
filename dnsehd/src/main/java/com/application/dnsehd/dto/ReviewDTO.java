package com.application.dnsehd.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ReviewDTO {
	
	private int reviewNo;
	private String reviewTitle;
	private String reviewContent;
	private int reviewScore;
	private Date reviewDt;
	private String memberId;
	private int classNo;
	private int resvNo;
	
}
