package com.application.dnsehd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

	@GetMapping("/notice")
	public String notice() {
		return "user/notice/notice";
	}	

	@GetMapping("/noticeDetail")
	public String noticeDetail() {
		return "user/notice/noticeDetail";
	}	
	
}
