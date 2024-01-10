package com.application.dnsehd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TeacherController {
	
	@GetMapping("/teacher")
	public String teacher() {
		return "user/teacher/teacher";
	}	

	@GetMapping("/teacherDetail")
	public String teacherDetail() {
		return "user/teacher/teacherDetail";
	}	
	
}
