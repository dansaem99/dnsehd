package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class SportDTO {
	
	private int sportNo;
	private String sportNm;
	private String sportContent;
	private int sportPrice;
	private String sportTime;
	private String sportCategory;
	private int sportLimit;
	private String adminId;
	private int teacherNo;
	
}
