package com.application.dnsehd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ReviewController {

	@GetMapping("/addReview")
	public ModelAndView addReview(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/review/addReview");
		mv.addObject("memberId", (String)session.getAttribute("memberId"));
		
		return mv;
	}	
	
	@GetMapping("/review")
	public String review() {
		return "user/review/review";
	}		
	
	@GetMapping("/reviewDetail")
	public String reviewDetail() {
		return "user/review/reviewDetail";
	}			
	
}
