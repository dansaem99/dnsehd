package com.application.dnsehd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ScheduleController {

	@GetMapping("/calendar")
	public String schedule() {
		return "user/schedule/calendar";
	}	
	
}
