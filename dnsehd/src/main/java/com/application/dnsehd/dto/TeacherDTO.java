package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class TeacherDTO {

	private int teacherNo;
	private String teacherNm;
	private String teacherBirth;
	private String teacherHp;
	private String teacherCareer;
	private String teacherIntro;
	private String adminId;
	
}
