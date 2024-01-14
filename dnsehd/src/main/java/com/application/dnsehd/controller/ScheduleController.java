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
	
	@GetMapping("/calendar2")
	public String schedule2() {
		return "user/schedule/calendar2";
	}
	
	@GetMapping("/calendar3")
	public String schedule3() {
		return "user/schedule/calendar3";
	}
	
	@GetMapping("/calendar4")
	public String schedule4() {
		return "user/schedule/calendar4";
	}
	
}
