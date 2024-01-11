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

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
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
	
	@PostMapping("/login")
	@ResponseBody
	public String loginMember(MemberDTO memberDTO, HttpServletRequest request) {
		
		String isValidMember = "n";
		if (memberService.loginMember(memberDTO)) {
			
			HttpSession session = request.getSession();
			session.setAttribute("memberId", memberDTO.getMemberId());
			
			isValidMember = "y";
			
		}
		
		return isValidMember;
		
	}
	
	@GetMapping("/logout")
	public String logoutMember(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:main";
		
	}
	
	@GetMapping("/mypage")
	public ModelAndView mypage(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/mypage/mypage");
		mv.addObject("memberDTO" , memberService.getMemberDetail((String)session.getAttribute("memberId")));
		
		return mv;
	}
	
	@GetMapping("/removeMember")
	public ModelAndView remove() {
		return new ModelAndView("user/member/removeMember");
	}
	
	@PostMapping("/mypage")
	public String mypage(@ModelAttribute MemberDTO memberDTO) {
		
		if (memberDTO.getSmsConsent() == null)	memberDTO.setSmsConsent("n");
		if (memberDTO.getEmailConsent() == null) memberDTO.setEmailConsent("n");
		System.out.println(memberDTO);
		memberService.modifyMember(memberDTO);
		
		return "redirect:mypage";
		
	}
	
}
