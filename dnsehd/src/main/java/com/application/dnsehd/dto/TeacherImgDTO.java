package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class TeacherImgDTO {
	
	int teacherImgNo;
	String teacherImgNm;
	String teacherImgUUID;
	int teacherNo;
	
}
