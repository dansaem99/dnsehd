package com.application.dnsehd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class test {

	@GetMapping("test")
	public String testProject() {
		return "test";
	}
	
}
