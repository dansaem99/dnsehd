package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.dto.SportDTO;
import com.application.dnsehd.service.SportService;

@Controller
public class SportController {
	
	@Autowired
	public SportService sportService;

	// admin
	
	@GetMapping("/adClass")
	public ModelAndView adClassList(ModelAndView mv) {
		
		mv.setViewName("admin/class/class");
		mv.addObject("classList", sportService.getClassList());
		
		return mv;
		
	}
	
	@GetMapping("/adAddClass")
	public String addClass() {
		return "admin/class/addClass";
	}
	
	@PostMapping("/adAddClass")
	public String addClass(SportDTO sportDTO) {
		sportService.addClass(sportDTO);
		return "redirect:/adClass";
	}
	
	@GetMapping("/adModifyClass")
	public ModelAndView modifyClass(@RequestParam("sportNo") int sportNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/class/modifyClass");
		mv.addObject("sportDTO", sportService.getClassDetail(sportNo));
		
		return mv;
		
	}
	
	@PostMapping("/adModifyClass") 
	public String modifyClass(SportDTO sportDTO) {
		sportService.modifyClassDetail(sportDTO);
		return "redirect:/adClass";
	}
	
	@GetMapping("/adRemoveClass")
	public ModelAndView removeClass(@RequestParam("sportNo") int sportNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/class/removeClass");
		mv.addObject("sportNo", sportNo);
		
		return mv;
		
	}
	
	@PostMapping("/adRemoveClass")
	public String postRemveClass(@RequestParam("sportNo") int sportNo) {
		sportService.removeOneClass(sportNo);
		return "redirect:/adClass";
	}
	
	// user
	@GetMapping("/class")
	public String classList() {
		return "user/sport/class";
	}	

	@GetMapping("/classDetail")
	public String classDetail() {
		return "user/sport/classDetail";
	}	
}
