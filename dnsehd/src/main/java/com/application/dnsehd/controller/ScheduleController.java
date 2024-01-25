package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.dto.ScheduleDTO;
import com.application.dnsehd.service.ScheduleService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@RestController
public class ScheduleController {
	
	@Autowired
	public ScheduleService scheduleService;	
	
    @GetMapping("/calendar")
    public ModelAndView viewCalendar(HttpServletRequest request) {
    	HttpSession session = request.getSession();
        ModelAndView mv = new ModelAndView();
    	mv.addObject("memberId", (String)session.getAttribute("memberId"));
        mv.setViewName("user/schedule/calendar");
        return mv;
    }
    
    @PostMapping("/calendar")    
    public void saveOrUpdateSchedule(@RequestBody ScheduleDTO scheduleDTO) {
    	scheduleService.saveOrUpdateSchedule(scheduleDTO);
    }
    
    
    @DeleteMapping("/delete")
    public void deleteSchedule(@RequestBody ScheduleDTO scheduleDTO) {
        scheduleService.removeSchedule(scheduleDTO.getEnrollDt());
    }
    
	// 수민 언니가 한 부분 주석처리
//	@Autowired
//	public ScheduleService scheduleService;	
//
//	@GetMapping("/calendar")
//	public ModelAndView schedule() {
//		
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("user/schedule/calendar");
//		
//		return mv;
//	}
//	
//	@GetMapping("/addSchedule")
//	public ModelAndView addSchedule() {
//		return new ModelAndView("user/schedule/calendar");
//	}
//	
//	@PostMapping("/addSchedule")
//	public String addSchedule(@ModelAttribute ScheduleDTO scheduleDTO) {
//		scheduleService.addSchedule(scheduleDTO);
//		return "redirect:calendar";
//	}
//	
//	@GetMapping("removeSchedule")
//	public ModelAndView removeSchedule() {
//		return new ModelAndView("user/schedule/calendar");
//	}
//	
//	@PostMapping("removeSchedule")
//	public String removeSchedule(@RequestParam("scheduleNo") int scheduleNo) {
//		scheduleService.removeSchedule(scheduleNo);
//		return "redirect:reservedClass";
//	}
	
}
