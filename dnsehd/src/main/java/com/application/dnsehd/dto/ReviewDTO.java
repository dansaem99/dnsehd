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
	Date reviewDT;
	String memeberId;
	int classNo;
	int resvNo;
	
}
