package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ReviewImgDTO {
	
	private int reviewImgNo;
	private String reviewImgNm;
	private String reviewImgUUID;
	private int reviewNo;

}
