package com.application.dnsehd.controller;

import java.io.IOException;
import java.util.HashMap;
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

import com.application.dnsehd.dto.TeacherDTO;
import com.application.dnsehd.dto.TeacherImgDTO;
import com.application.dnsehd.service.TeacherService;

@Controller
public class TeacherController {
	
	@Value("${file.repo.path}")
	private String fileRepositoryPath;

	@Autowired
	private TeacherService teacherService;
	
	// image
	@GetMapping("/teacherImg")
	@ResponseBody
	public Resource teacherImg(@RequestParam("fileName") String fileName) throws IOException{
		return new UrlResource("file:" + fileRepositoryPath + fileName);
	}
	
	
	// for admin
	@GetMapping("/adAddTeacher")
	public String addTeacher() {
		return "admin/teacher/addTeacher";
	}	
	
	
	@PostMapping("/adAddTeacher")
	public String addTeacher(@RequestParam("uploadProfile") MultipartFile uploadProfile, TeacherDTO teacherDTO, TeacherImgDTO teacherImgDTO) throws IllegalStateException, IOException{
		teacherService.addTeacherDetail(uploadProfile, teacherDTO, teacherImgDTO);
		return "redirect:/adTeacher";
		
	}
	
	
	@GetMapping("/adTeacher")
	public ModelAndView adminTeacherList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/teacher/teacher");
		mv.addObject("teacherList", teacherService.adminTeacherList());
		
		return mv;
	}	
	
	
	@GetMapping("/adModifyTeacher")
	public ModelAndView modifyTeacher(@RequestParam("teacherNo") int teacherNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/teacher/modifyTeacher");
		mv.addObject("teacherMap", teacherService.getTeacherDetail(teacherNo));
		
		return mv;
	}	
	
	
	@PostMapping("/adModifyTeacher")
	public String modifyTeacher(@RequestParam("uploadProfile") MultipartFile uploadProfile, TeacherDTO teacherDTO, TeacherImgDTO teacherImgDTO) throws IllegalStateException, IOException {
		teacherService.modifyTeacherDetail(uploadProfile, teacherDTO, teacherImgDTO);
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
	
	
	// for user
	@GetMapping("/teacher")
	public ModelAndView teacherList(@RequestParam(name="searchWord" , defaultValue = "") String searchWord,
									@RequestParam(name="onePageViewCnt" , defaultValue = "9") int onePageViewCnt,
									@RequestParam(name="currentPageNumber" , defaultValue = "1") int currentPageNumber) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/teacher/teacher");
		
		int allTeacherCnt = teacherService.getAllTeacherCnt(searchWord);
		
		int allPageCnt = allTeacherCnt / onePageViewCnt + 1;
		
		if (allTeacherCnt % onePageViewCnt == 0) allPageCnt--;
		
		int startPage = (currentPageNumber - 1) / 10 * 10 + 1;
		if (startPage == 0) {
			startPage = 1;
		}
		
		int endPage = startPage + 9;
		
		if (endPage > allPageCnt) endPage = allPageCnt;
		
		int startTeacherIdx = (currentPageNumber - 1) * onePageViewCnt;
		
		mv.addObject("startPage", startPage);
		mv.addObject("endPage", endPage);
		mv.addObject("allTeacherCnt", allTeacherCnt);
		mv.addObject("allPageCnt", allPageCnt);
		mv.addObject("onePageViewCnt", onePageViewCnt);
		mv.addObject("currentPageNumber", currentPageNumber);
		mv.addObject("startTeacherIdx", startTeacherIdx);
		mv.addObject("searchWord", searchWord);
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("onePageViewCnt", onePageViewCnt);
		searchMap.put("startTeacherIdx", startTeacherIdx);
		searchMap.put("searchWord", searchWord);
		mv.addObject("teacherList", teacherService.getTeacherList(searchMap));
		
		return mv;
	}	

	
	@GetMapping("/teacherDetail")
	public ModelAndView teacherDetail(@RequestParam("teacherNo") int teacherNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/teacher/teacherDetail");
		mv.addObject("teacherMap", teacherService.getTeacherDetail(teacherNo));
		mv.addObject("classList", teacherService.getTeacherOwnClassList(teacherNo));
		
		return mv;
	}	
	
	@GetMapping("/addTeacherDummy")
	public String addTeacherDummy() {
		teacherService.addTeacherDummy();
		return "redirect:/teacher";
	}
	
}
