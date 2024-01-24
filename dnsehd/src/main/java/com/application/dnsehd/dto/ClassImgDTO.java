package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ClassImgDTO {

	private int classImgNo;
	private String classImgNm;
	private String classImgUUID;
	private int classNo;
	
}
