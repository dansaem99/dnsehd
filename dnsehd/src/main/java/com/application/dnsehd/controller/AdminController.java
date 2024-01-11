package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.dto.AdminDTO;
import com.application.dnsehd.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("/adMain")
	public ModelAndView adminMain(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		HttpSession session = request.getSession();
		if (session.getAttribute("adminId") != null) {
			mv.setViewName("admin/main");
		} else {
			mv.setViewName("admin/login");
		}
		
		return mv;
		
	}
	
	@PostMapping("/adMain")
	@ResponseBody
	public String loginAdmin(AdminDTO adminDTO, HttpServletRequest request) {
		
		String isValidAdmin = "n";
		
		System.out.println(adminDTO);
		
		if (adminService.loginAdmin(adminDTO)) {
			
			HttpSession session = request.getSession();
			session.setAttribute("adminId", adminDTO.getAdminId());
			isValidAdmin = "y";
			
		}
		
		return isValidAdmin;
	}
	
}
