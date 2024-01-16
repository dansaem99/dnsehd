package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ClassDTO {
	
	private int classNo;
	private String classNm;
	private String classContent;
	private int classPrice;
	private String classTime;
	private String classCategory;
	private int classLimit;
	private String adminId;
	private int teacherNo;
	
}
