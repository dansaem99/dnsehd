package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;

	@GetMapping
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/main");
		mv.addObject("eventList", mainService.getEventList());
		mv.addObject("classList", mainService.getClassList());
		return mv;
	}	

}
