package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.application.dnsehd.dto.NoticeDTO;
import com.application.dnsehd.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	// admin
	@GetMapping("/adAddNotice")
	public String addNotice() {
		return "admin/notice/addNotice";
	}
	
	@PostMapping("/adAddNotice")
	public String addNotice(NoticeDTO noticeDTO) {
		noticeService.addNotiveDetail(noticeDTO);
		return "redirect:/adNotice";
	}

	@GetMapping("/notice")
	public String notice() {
		return "user/notice/notice";
	}	

	@GetMapping("/noticeDetail")
	public String noticeDetail() {
		return "user/notice/noticeDetail";
	}	
	
}
