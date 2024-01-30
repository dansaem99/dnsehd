package com.application.dnsehd.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.dto.MemberDTO;
import com.application.dnsehd.service.MemberService;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	// for user
	@GetMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("user/member/register");
	}	
	
	@PostMapping("/register")
	public String register(@ModelAttribute MemberDTO memberDTO) {
		memberService.addMember(memberDTO);
		return "redirect:/";
	}
	
	@PostMapping("/validId")
	@ResponseBody
	public String validId(@RequestParam("memberId") String memberId) {
		return memberService.checkValidId(memberId);
	}

	@GetMapping("/login")
	public ModelAndView login(@CookieValue(name = "userId", required = false) String userId) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/member/login");
		
	    if (userId != null) {
	        mv.addObject("loginType", "cookie-login");
	        mv.addObject("pageName", "쿠키 로그인");
	    } 
		
		return mv;
	}
	
	@PostMapping("/login")
	@ResponseBody
	public String loginMember(MemberDTO memberDTO, HttpServletRequest request, HttpServletResponse response, @RequestParam("maintainLogin") String maintainLogin) {
		
		String isValidMember = "n";
		if (memberService.loginMember(memberDTO)) {
			
			HttpSession session = request.getSession();
			session.setAttribute("memberId", memberDTO.getMemberId());
			
			isValidMember = "y";
			
			if (maintainLogin.equals("y")) {
				
				Cookie idCookie = new Cookie("userId", String.valueOf(memberDTO.getMemberId()));
				idCookie.setMaxAge(60 * 60 * 24 * 90);  // 유효 시간 90일
				response.addCookie(idCookie);
			}			
		}
		
		return isValidMember;
		
	}
	
	@PostMapping("/removeCookie")
	public void removeCookie(HttpServletResponse response, @RequestParam("maintainLogin") String maintainLogin) {
		if (!maintainLogin.equals("y")) {	
			
			Cookie idCookie = new Cookie("userId", null);
			idCookie.setMaxAge(0);
			response.addCookie(idCookie);		
		}
	}
	
	@GetMapping("/logout")
	public String logoutMember(HttpServletRequest request) {
		
		HttpSession session = request.getSession();		
		session.invalidate();
		
		return "redirect:/";
		
	}
	
	@GetMapping("/mypage")
	public ModelAndView mypage(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/mypage/mypage");
		mv.addObject("memberDTO" , memberService.getMemberDetail((String)session.getAttribute("memberId")));
		
		return mv;
	}
	
	@PostMapping("/mypage")
	public String mypage(@ModelAttribute MemberDTO memberDTO) {
		
		if (memberDTO.getEmailConsent() == null) memberDTO.setEmailConsent("n");
		memberService.modifyMember(memberDTO);
		
		return "redirect:mypage";
		
	}

	@GetMapping("/removeMember")
	public ModelAndView remove() {
		return new ModelAndView("user/member/removeMember");
	}
	
	@PostMapping("/removeMember")
	public String remove(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		memberService.modifyInactiveMember((String)session.getAttribute("memberId"));
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	@GetMapping("/findPassword")
	public ModelAndView findPassword(HttpServletRequest request) {
		
	    Random random = new Random();
	    String authenticationNo = Integer.toString(100000 + random.nextInt(900000));

	    HttpSession session = request.getSession();
	    session.setAttribute("authenticationNo", authenticationNo);

	    return new ModelAndView("user/member/findPassword");
	}

	@PostMapping("/findPassword")
	@ResponseBody
	public Map<String, String> findPassword(MemberDTO memberDTO, HttpServletRequest request) {
	    Map<String, String> authInfo = new HashMap<>();

	    HttpSession session = request.getSession();
	    String authenticationNo = (String) session.getAttribute("authenticationNo");

	    String isValidMember = "n";
	    if (memberService.authenticateMember(memberDTO, authenticationNo)) {
	    	session.setAttribute("tempMemberId", memberDTO.getMemberId());
	        isValidMember = "y";
	    }

	    authInfo.put("isValidMember", isValidMember);
	    authInfo.put("authenticationNo", authenticationNo);

	    return authInfo;
	}

	@GetMapping("/modifyPassword")
	public ModelAndView modifyPassword(HttpServletRequest request) {
	    HttpSession session = request.getSession();
	    
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/member/modifyPassword");
		mv.addObject("memberDTO" , memberService.getMemberDetail((String)session.getAttribute("tempMemberId")));
		
		return mv;
	}
	
	@PostMapping("/modifyPassword")
	public String modifyPassword(@ModelAttribute MemberDTO memberDTO) {
		System.out.println(memberDTO);
		memberService.modifyMemberPw(memberDTO);
		
		return "redirect:login";
		
	}
	
	// for admin
	@GetMapping("/adMember")
	public ModelAndView adMemberList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/member/member");
		mv.addObject("memberList", memberService.getMemberList());
		
		return mv;
	}
	
	@GetMapping("/adModifyMember")
	public ModelAndView modifyMember(@RequestParam("memberId") String memberId) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/member/modifyMember");
		mv.addObject("memberDTO", memberService.getMemberDetail(memberId));
		
		return mv;
	}
	
	@PostMapping("/adModifyMember")
	public String modifyMember(MemberDTO memberDTO) {
		memberService.modifyMember(memberDTO);
		return "redirect:/adMember";
	}
	
	@GetMapping("/adRemoveMember")
	public ModelAndView removeMember(@RequestParam("memberId") String memberId) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/member/removeMember");
		mv.addObject("memberId", memberId);
		
		return mv;
		
	}
	
	@PostMapping("/adRemoveMember")
	public String postRemoveMember(@RequestParam("memberId") String memberId) {
		memberService.modifyInactiveMember(memberId);
		
		return "redirect:/adMember";
	}
	
}