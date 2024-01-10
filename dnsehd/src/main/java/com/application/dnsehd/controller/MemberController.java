package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.dto.MemberDTO;
import com.application.dnsehd.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("/main")
	public ModelAndView main() {
		return new ModelAndView("user/member/main");
	}	
	
	@GetMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("user/member/register");
	}	
	
	@PostMapping("/register")
	public String register(@ModelAttribute MemberDTO memberDTO) {
		memberService.addMember(memberDTO);
		return "redirect:main";
	}
	
	@PostMapping("/validId")
	@ResponseBody
	public String validId(@RequestParam("memberId") String memberId) {
		return memberService.checkValidId(memberId);
	}

	@GetMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("user/member/login");
	}	
	
	@GetMapping("/mypage")
	public String mypage() {
		return "user/mypage/mypage";
	}	
	
	@GetMapping("/removeMember")
	public ModelAndView remove() {
		return new ModelAndView("user/member/removeMember");
	}
	
}
