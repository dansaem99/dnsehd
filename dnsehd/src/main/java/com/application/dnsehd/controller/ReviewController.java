package com.application.dnsehd.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.dto.ReviewDTO;
import com.application.dnsehd.dto.ReviewImgDTO;
import com.application.dnsehd.dto.TeacherImgDTO;
import com.application.dnsehd.service.ReviewService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ReviewController {

	@Value("${file.repo.path}")
	private String fileRepositoryPath;
	
	@Autowired
	private ReviewService reviewService;
	
	// image
	@GetMapping("/reviewImg")
	@ResponseBody
	public Resource reviewImg(@RequestParam("fileName") String fileName) throws IOException{
		return new UrlResource("file:" + fileRepositoryPath + fileName);
	}
	
	// For user
	@GetMapping("/addReview")
	public ModelAndView addReview(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/review/addReview");
		mv.addObject("memberId", (String)session.getAttribute("memberId"));
		mv.addObject("classList", reviewService.getClassList((String)session.getAttribute("memberId")));
		mv.addObject("myReservationList", reviewService.getMyResvList((String)session.getAttribute("memberId")));
		return mv;
	}	
	
	@PostMapping("/addReview")
	public String addReview(@RequestParam("uploadProfile") MultipartFile uploadProfile, ReviewDTO reviewDTO, ReviewImgDTO reviewImgDTO) throws IllegalStateException, IOException{
		reviewService.addReview(uploadProfile, reviewDTO, reviewImgDTO);
		return "redirect:/addReview";
	}
	
	@GetMapping("/review")
	public ModelAndView review() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/review/review");
		mv.addObject("reviewList", reviewService.getReviewList());
		
		return mv;
	}		
	
	@GetMapping("/reviewDetail")
	public ModelAndView reviewDetail(@RequestParam("reviewNo") int reviewNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/review/reviewDetail");
		mv.addObject("reviewMap", reviewService.getReviewDetail(reviewNo));
		mv.addObject("reviewList", reviewService.getReviewList());
		
		return mv;
	}			
	
	@GetMapping("/myReview")
	public ModelAndView myReview(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String memberId = (String)session.getAttribute("memberId");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/mypage/myReview");
		mv.addObject("myReviewList", reviewService.getMyReviewList(memberId));
		
		return mv;
	}
	
	@GetMapping("/modifyMyReview")
	public ModelAndView modifyReview(@RequestParam("reviewNo") int reviewNo, HttpServletRequest request) {
	
		HttpSession session = request.getSession();		
	
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/mypage/modifyMyReview");
		mv.addObject("memberId", (String)session.getAttribute("memberId"));
		mv.addObject("classList", reviewService.getClassList((String)session.getAttribute("memberId")));
		mv.addObject("reviewMap", reviewService.getReviewDetail(reviewNo));
		mv.addObject("myReservationList", reviewService.getMyResvList((String)session.getAttribute("memberId")));
		mv.addObject("selectedResvNo", reviewService.getSelectedResvNo(reviewNo));
		mv.addObject("selectedClassNo", reviewService.getSelectedResvNo(reviewNo));

		return mv;
	}
	
	@PostMapping("/modifyMyReview")
	public String modifyReview(@RequestParam("uploadProfile") MultipartFile uploadProfile, ReviewDTO reviewDTO, ReviewImgDTO reviewImgDTO) throws IllegalStateException, IOException {
		reviewService.modifyMyReviewDetail(uploadProfile, reviewDTO, reviewImgDTO);
		return "redirect:/myReview";
	}
	
	@GetMapping("/removeMyReview")
	public ModelAndView removeMyReview(@RequestParam("reviewNo") int reviewNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/mypage/removeMyReview");
		mv.addObject("reviewNo", reviewNo);
		
		return mv;
	}
	
	@PostMapping("/removeMyReview")
	public String postRemoveMyReview(@RequestParam("reviewNo") int reviewNo) {
		reviewService.removeMyReview(reviewNo);
		return "redirect:/myReview";
	}
	
	// For admin
	@GetMapping("/adReview")
	public ModelAndView adReviewList() {
	
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/review/review");
		mv.addObject("reviewList", reviewService.getReviewList());
		
		return mv;		
	}
	
	@GetMapping("/adReviewDetail")
	public ModelAndView adReviewDetail(@RequestParam("reviewNo") int reviewNo) {
	
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/review/reviewDetail");
		mv.addObject("reviewMap", reviewService.getReviewDetail(reviewNo));
		
		return mv;		
	}

	@GetMapping("/adRemoveReview")
	public ModelAndView removeReview(@RequestParam("reviewNo") int reviewNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/review/removeReview");
		mv.addObject("reviewNo", reviewNo);
		
		return mv;
		
	}	
	
	@PostMapping("/adRemoveReview")
	public String postRemoveReview(@RequestParam("reviewNo") int reviewNo) {
		reviewService.removeMyReview(reviewNo);
		return "redirect:/adReview";
	}
	
}
