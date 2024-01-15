package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.service.SportService;

@Controller
public class SportController {
	
	@Autowired
	public SportService sportService;

	// admin
	
	@GetMapping("/adClass")
	public ModelAndView adClass(ModelAndView mv) {
		
		mv.setViewName("admin/class/class");
		mv.addObject("class", sportService.getClassList());
		
		return mv;
		
	}
	
	@GetMapping("/class")
	public String classList() {
		return "user/sport/class";
	}	

	@GetMapping("/classDetail")
	public String classDetail() {
		return "user/sport/classDetail";
	}	
}
