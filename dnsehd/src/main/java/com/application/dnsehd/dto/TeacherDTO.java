package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class TeacherDTO {

	int teacherNo;
	String teacherNm;
	String teacherBirth;
	String teacherHp;
	String teacherCareer;
	String teacherIntro;
	String teacherClass;
	String adminId;
//	int sportNo;
	
}
