package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.dto.ReviewDTO;
import com.application.dnsehd.service.ReviewService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	// For user
	@GetMapping("/addReview")
	public ModelAndView addReview(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/review/addReview");
		mv.addObject("memberId", (String)session.getAttribute("memberId"));
		
		return mv;
	}	
	
	@PostMapping("/addReview")
	public String addReview(ReviewDTO reviewDTO) {

		reviewService.addReview(reviewDTO);
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
		mv.addObject("reviewDTO", reviewService.getReviewDetail(reviewNo));
		
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
	public ModelAndView modifyReview(@RequestParam("reviewNo") int reviewNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/mypage/modifyMyReview");
		mv.addObject("reviewDTO", reviewService.getReviewDetail(reviewNo));
		
		return mv;
	}
	
	@PostMapping("/modifyMyReview")
	public String modifyReview(ReviewDTO reviewDTO) {
		reviewService.modifyMyReviewDetail(reviewDTO);
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
		mv.addObject("reviewDTO", reviewService.getReviewDetail(reviewNo));
		
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
