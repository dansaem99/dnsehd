package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.dto.EventDTO;
import com.application.dnsehd.service.EventService;

@Controller
public class EventController {

	@Autowired
	private EventService eventService;
	
	// admin
	
	@GetMapping("/adEvent")
	public ModelAndView adEventList(ModelAndView mv) {
		
		mv.setViewName("admin/event/event");
		mv.addObject("eventList", eventService.getEventList());
		
		return mv;
		
	}
	
	@GetMapping("/adAddEvent")
	public ModelAndView addEvent(ModelAndView mv) {
		
		mv.setViewName("admin/event/addEvent");
		mv.addObject("classList", eventService.getSportList());
		
		return mv;
	}
	
	@PostMapping("/adAddEvent")
	public String addEvent(EventDTO eventDTO) {
		eventService.addEvent(eventDTO);
		return "redirect:adEvnet";
	}
	
}
