package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.application.dnsehd.service.TeacherService;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	
	@GetMapping("/adAddTeacher")
	public String addTeacher() {
		return "admin/teacher/addTeacher";
	}	
	
	@GetMapping("/adTeacher")
	public String adminTeacherList() {
		return "admin/teacher/teacher";
	}	
	
	@GetMapping("/adModifyTeacher")
	public String modifyTeacher() {
		return "admin/teacher/modifyTeacher";
	}	

	@GetMapping("/adRemoveTeacher")
	public String removeTeacher() {
		return "admin/teacher/removeTeacher";
	}	
	
	@GetMapping("/teacher")
	public String teacherList() {
		return "user/teacher/teacher";
	}	

	@GetMapping("/teacherDetail")
	public String teacherDetail() {
		return "user/teacher/teacherDetail";
	}	
	
}
