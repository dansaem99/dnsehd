package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class TeacherImgDTO {
	
	private int teacherImgNo;
	private String teacherImgNm;
	private String teacherImgUUID;
	private int teacherNo;
	
}
