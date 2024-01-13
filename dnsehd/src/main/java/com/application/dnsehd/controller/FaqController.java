package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.dto.FaqDTO;
import com.application.dnsehd.service.FaqService;

@Controller
public class FaqController {
	
	@Autowired
	private FaqService faqService;
	
	// For admin
	@GetMapping("/adAddFaq")
	public String addFaq() {
		return "admin/faq/addFaq";
	}
	
	@PostMapping("/adAddFaq")
	public String addFaq(FaqDTO faqDTO) {

		faqService.addFaqDetail(faqDTO);
		return "redirect:/adFaq";
		
	}
	
	@GetMapping("/adFaq")
	public ModelAndView adFaqList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/faq/faq");
		mv.addObject("faqList", faqService.getFaqList());
		
		return mv;
	}
	
	@GetMapping("/adModifyFaq")
	public ModelAndView modifyFaq(@RequestParam("faqNo") int faqNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/faq/modifyFaq");
		mv.addObject("faqDTO", faqService.getFaqDetail(faqNo));
		
		return mv;
	}
	
	@PostMapping("/adModifyFaq")
	public String modifyFaq(FaqDTO faqDTO) {
		faqService.modifyFaqDetail(faqDTO);
		return "redirect:/adFaq";
	}
	
	@GetMapping("/adRemoveFaq")
	public ModelAndView removeFaq(@RequestParam("faqNo") int faqNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/faq/removeFaq");
		mv.addObject("faqNo", faqNo);
		
		return mv;
	}
	
	@PostMapping("/adRemoveFaq")
	public String postRemoveFaq(@RequestParam("faqNo") int faqNo) {
		faqService.removeOneFaq(faqNo);
		return "redirect:/adFaq";
	}
	
	// For user
	@GetMapping("/faq")
	public ModelAndView faqList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/faq/faq");
		mv.addObject("faqList", faqService.getFaqList());

		return mv;
	}
	
}
