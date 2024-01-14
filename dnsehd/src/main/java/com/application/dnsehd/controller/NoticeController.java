package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
		noticeService.addNotice(noticeDTO);
		return "redirect:/adNotice";
	}
	
	@GetMapping("/adNotice")
	public ModelAndView adNoticeList(ModelAndView mv) {
		
		mv.setViewName("admin/notice/notice");
		mv.addObject("noticeList", noticeService.getNoticeList());
		
		return mv;
		
	}
	
	@GetMapping("/adModifyNotice")
	public ModelAndView modifyNotice(@RequestParam("noticeNo") int noticeNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/notice/modifyNotice");
		mv.addObject("noticeDTO", noticeService.getNoticeDetail(noticeNo));
		
		return mv;
		
	}
	
	@PostMapping("/adModifyNotice")
	public String modifyNotice(NoticeDTO noticeDTO) {
		noticeService.modifyNoticeDetail(noticeDTO);
		return "redirect:/adNotice";
	}
	
	@GetMapping("/adRemoveNotice")
	public ModelAndView removeNotice(@RequestParam("noticeNo") int noticeNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/notice/removeNotice");
		mv.addObject("noticeNo", noticeNo);
		
		return mv;
	}
	
	@PostMapping("/adRemoveNotice")
	public String postRemoveNotice(@RequestParam("noticeNo") int noticeNo) {
		noticeService.removeOneNotice(noticeNo);
		return "redirect:/adNotice";
	}
	
	// user
	@GetMapping("/notice")
	public ModelAndView notice() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/notice/notice");
		mv.addObject("noticeList", noticeService.getNoticeList());
		
		return mv;
	
	}	

	@GetMapping("/noticeDetail")
	public ModelAndView noticeDetail(@RequestParam("noticeNo") int noticeNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/notice/noticeDetail");
		mv.addObject("noticeDTO", noticeService.getNoticeDetail(noticeNo));
		
		return mv;
	}
	
}
