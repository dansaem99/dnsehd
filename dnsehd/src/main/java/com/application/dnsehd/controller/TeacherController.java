package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.dto.TeacherDTO;
import com.application.dnsehd.service.TeacherService;

@Controller
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	
	@GetMapping("/adAddTeacher")
	public String addTeacher() {
		return "admin/teacher/addTeacher";
	}	
	
	
	@PostMapping("/adAddTeacher")
	public String addTeacher(TeacherDTO teacherDTO){
		
		teacherService.addTeacherDetail(teacherDTO);
		return "redirect:/adTeacher";
		
	}
	
	
	@GetMapping("/adTeacher")
	public ModelAndView adminTeacherList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/teacher/teacher");
		mv.addObject("teacherList", teacherService.getTeacherList());
		
		return mv;
	}	
	
	
	@GetMapping("/adModifyTeacher")
	public ModelAndView modifyTeacher(@RequestParam("teacherNo") int teacherNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/teacher/modifyTeacher");
		mv.addObject("teacherDTO", teacherService.getTeacherDetail(teacherNo));
		
		return mv;
	}	
	
	
	@PostMapping("/adModifyTeacher")
	public String modifyTeacher(TeacherDTO teacherDTO) {
		teacherService.modifyTeacherDetail(teacherDTO);
		return "redirect:/adTeacher";
	}

	
	@GetMapping("/adRemoveTeacher")
	public ModelAndView removeTeacher(@RequestParam("teacherNo") int teacherNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/teacher/removeTeacher");
		mv.addObject("teacherNo", teacherNo);
		
		return mv;
		
	}	
	

	@PostMapping("/adRemoveTeacher")
	public String postRemoveTeacher(@RequestParam("teacherNo") int teacherNo) {
		teacherService.removeOneTeacher(teacherNo);
		return "redirect:/adTeacher";
	}
	
	
	@GetMapping("/teacher")
	public String teacherList() {
		return "user/teacher/teacher";
	}	

	
	@GetMapping("/teacherDetail")
	public String teacherDetail() {
		return "user/teacher/teacherDetail";
	}	
	
}
