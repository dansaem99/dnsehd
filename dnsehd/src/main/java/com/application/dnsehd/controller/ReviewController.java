package com.application.dnsehd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReviewController {

	@GetMapping("/addReview")
	public String addReview() {
		return "user/review/addReview";
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
