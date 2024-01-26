package com.application.dnsehd.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
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
	
	@GetMapping("/adClass")
	public ModelAndView adClassList() {
	
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/class/class");
		mv.addObject("classList", classService.adminClassList());
		
		return mv;
		
	}
	
	@GetMapping("/adModifyClass")
	public ModelAndView modifyClass(@RequestParam("classNo") int classNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/class/modifyClass");
		mv.addObject("classMap", classService.getClassDetail(classNo));
		mv.addObject("teacherList", classService.getTeacherList());
		
		return mv;
		
	}
	
	@PostMapping("/adModifyClass") 
	public String modifyClass(@RequestParam("uploadProfile") MultipartFile uploadProfile, ClassDTO classDTO, ClassImgDTO classImgDTO) throws IllegalStateException, IOException {
		classService.modifyClassDetail(uploadProfile, classDTO, classImgDTO);
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
	public ModelAndView classList(@RequestParam(name="onePageViewCnt" , defaultValue = "9") int onePageViewCnt,
								 @RequestParam(name="currentPageNumber" , defaultValue = "1") int currentPageNumber) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/class/class");
		
		int allClassCnt = classService.getAllClassCnt();
		
		int allPageCnt = allClassCnt / onePageViewCnt + 1;
		
		if (allClassCnt % onePageViewCnt == 0) allPageCnt--;
		
		int startPage = (currentPageNumber - 1) / 10 * 10 + 1;
		if (startPage == 0) {
			startPage = 1;
		}
		
		int endPage = startPage + 9;
		
		if (endPage > allPageCnt) endPage = allPageCnt;
		
		int startClassIdx = (currentPageNumber - 1) * onePageViewCnt;
		
		mv.addObject("startPage", startPage);
		mv.addObject("endPage", endPage);
		mv.addObject("allClassCnt", allClassCnt);
		mv.addObject("allPageCnt", allPageCnt);
		mv.addObject("onePageViewCnt", onePageViewCnt);
		mv.addObject("currentPageNumber", currentPageNumber);
		mv.addObject("startClassIdx", startClassIdx);
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("onePageViewCnt", onePageViewCnt);
		searchMap.put("startClassIdx", startClassIdx);
		mv.addObject("classList", classService.getClassList(searchMap));
		return mv;
	}	

	@GetMapping("/classDetail")
	public ModelAndView classDetail(@RequestParam("classNo") int classNo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/class/classDetail");
		mv.addObject("classMap", classService.getClassDetail(classNo));
		mv.addObject("reviewList", classService.getReviewList(classNo));
		mv.addObject("reviewScore", classService.getReviewScore(classNo));
		return mv;
	}
	
	@GetMapping("/searchClassList")
	@ResponseBody
	public List<Map<String, Object>> searchClassList(@RequestParam Map<String, String> searchMap) {
		return classService.getClassSearchList(searchMap);
	}
	
	@GetMapping("/checkClass")
	@ResponseBody
	public List<Map<String, Object>> checkClass(@RequestParam("param") String param) {
		
		String[] categoryArray = new String[1];
		List<Map<String, Object>> checkClassList = null;
		
		if (!param.equals("")) {
			
			categoryArray = param.split(",");
			String[] categotyArrayl = Arrays.copyOfRange(categoryArray, 1, categoryArray.length);
			checkClassList = classService.getClassCheckList(categotyArrayl);
			for (Map<String, Object> classDTO : checkClassList) {
				System.out.println(classDTO);
			}
		} else {
			checkClassList = classService.getClassList(null);
		}
		
		return checkClassList;
		
	}

}
