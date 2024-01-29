package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	public ModelAndView addEvent() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/event/addEvent");
		mv.addObject("classList", eventService.getClassList());
		
		return mv;
	}
	
	@PostMapping("/adAddEvent")
	public String addEvent(EventDTO eventDTO) {
		eventService.addEventDetail(eventDTO);
		return "redirect:adEvent";
	}
	
	@GetMapping("/adModifyEvent")
	public ModelAndView modifyEvent(@RequestParam("eventNo") int eventNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/event/modifyEvent");
		mv.addObject("eventDTO", eventService.getEventDetail(eventNo));
		mv.addObject("classList", eventService.getClassList());
		
		return mv;
		
	}
	
	@PostMapping("/adModifyEvent")
	public String modifyEvent(EventDTO eventDTO) {
		eventService.modifyEventDetail(eventDTO);
		return "redirect:/adEvent";
	}
	
	@GetMapping("/adRemoveEvent")
	public ModelAndView getRemoveEvent(@RequestParam("eventNo") int eventNo) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/event/removeEvent");
		mv.addObject("eventNo", eventNo);
		
		return mv;
				
	}
	
	@PostMapping("/adRemoveEvent")
	public String postRemoveEvent(@RequestParam("eventNo") int eventNo) {
		eventService.removeOneEvent(eventNo);
		return "redirect:/adEvent";
	}
	
	// user
	@GetMapping("/eventDetail")
	public ModelAndView eventDetail(@RequestParam("eventNo") int eventNo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/event/eventDetail");
		mv.addObject("eventMap", eventService.getEventDetail(eventNo));
		mv.addObject("reviewList", eventService.getReviewList(eventNo));
		mv.addObject("reviewScore", eventService.getReviewScore(eventNo));
		return mv;
	}
	
}
