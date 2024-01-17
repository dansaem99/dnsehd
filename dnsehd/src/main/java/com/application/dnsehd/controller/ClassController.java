package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.service.ClassService;

@Controller
public class ClassController {
	
	@Autowired
	public ClassService classService;

	// admin
	
	@GetMapping("/adClass")
	public ModelAndView adClassList() {
	
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/class/class");
		mv.addObject("classList", classService.getClassList());
		
		return mv;
		
	}
	
	@GetMapping("/adAddClass")
	public ModelAndView addClass() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/class/addClass");
		mv.addObject("teacherList", classService.getTeacherList());
		
		return mv;
	}
	
	@PostMapping("/adAddClass")
	public String addClass(ClassDTO classDTO) {
		classService.addClass(classDTO);
		return "redirect:/adClass";
	}
	
	@GetMapping("/adModifyClass")
	public ModelAndView modifyClass(@RequestParam("classNo") int classNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/class/modifyClass");
		mv.addObject("classDTO", classService.getClassDetail(classNo));
		
		return mv;
		
	}
	
	@PostMapping("/adModifyClass") 
	public String modifyClass(ClassDTO classDTO) {
		classService.modifyClassDetail(classDTO);
		return "redirect:/adClass";
	}
	
	@GetMapping("/adRemoveClass")
	public ModelAndView removeClass(@RequestParam("classNo") int classNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/class/removeClass");
		mv.addObject("classNo", classNo);
		
		return mv;
		
	}
	
	@PostMapping("/adRemoveClass")
	public String postRemveClass(@RequestParam("classNo") int classNo) {
		classService.removeOneClass(classNo);
		return "redirect:/adClass";
	}
	
	// user
	@GetMapping("/class")
	public ModelAndView classList() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/class/class");
		mv.addObject("classList", classService.getClassList());
		return mv;
	}	

	@GetMapping("/classDetail")
	public ModelAndView classDetail(@RequestParam("classNo") int classNo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/class/classDetail");
		mv.addObject("classDTO", classService.getClassDetail(classNo));
		return mv;
	}	
}
