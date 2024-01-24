package com.application.dnsehd.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.ClassImgDTO;
import com.application.dnsehd.service.ClassService;

@Controller
public class ClassController {
	
	@Value("${file.repo.path}")
	private String fileRepositoryPath;
	
	@Autowired
	public ClassService classService;
	
	// image
	@GetMapping("/classImg")
	@ResponseBody
	public Resource classImg(@RequestParam("fileName") String fileName) throws IOException{
		return new UrlResource("file:" + fileRepositoryPath + fileName);
	}

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
	public String addClass(@RequestParam("uploadProfile") MultipartFile uploadProfile, ClassDTO classDTO, ClassImgDTO classImgDTO) throws IllegalStateException, IOException{
		classService.addClass(uploadProfile, classDTO, classImgDTO);
		return "redirect:/adClass";
	}
	
	@GetMapping("/adModifyClass")
	public ModelAndView modifyClass(@RequestParam("classNo") int classNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/class/modifyClass");
		mv.addObject("classDTO", classService.getClassDetail(classNo));
		mv.addObject("teacherList", classService.getTeacherList());
		
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
		//mv.addObject("teacherDTO", classService.getTeacherDetail());
		return mv;
	}
	
	@GetMapping("/searchClassList")
	@ResponseBody
	public List<ClassDTO> searchClassList(@RequestParam Map<String, String> searchMap) {
		return classService.getClassSearchList(searchMap);
	}
	
	@GetMapping("/checkClass")
	@ResponseBody
	public List<ClassDTO> checkClass(@RequestParam("param") String param) {
		
		String[] categoryArray = new String[1];
		List<ClassDTO> checkClassList = null;
		if (!param.equals("")) {
			
			categoryArray = param.split(",");
			String[] categotyArrayl = Arrays.copyOfRange(categoryArray, 1, categoryArray.length);
			checkClassList = classService.getClassCheckList(categotyArrayl);
			for (ClassDTO classDTO : checkClassList) {
				System.out.println(classDTO);
			}
		} else {
			checkClassList = classService.getClassList();
		}
		
		return checkClassList;
		
	}

}
