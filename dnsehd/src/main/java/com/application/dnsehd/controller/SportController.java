package com.application.dnsehd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SportController {

	@GetMapping("/class")
	public String classList() {
		return "user/sport/class";
	}	

	@GetMapping("/classDetail")
	public String classDetail() {
		return "user/sport/classDetail";
	}	
}
