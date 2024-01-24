package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ClassImgDTO {

	int classImgNo;
	String classImgNm;
	String classImgUUID;
	int classNo;
	
}
