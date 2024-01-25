package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.dto.ScheduleDTO;
import com.application.dnsehd.service.ScheduleService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@RestController
@RequestMapping("/calendar")
public class ScheduleController {
	
	@Autowired
	public ScheduleService scheduleService;	
	
    @GetMapping
    public ModelAndView viewCalendar(HttpServletRequest request) {
    	HttpSession session = request.getSession();
        ModelAndView mv = new ModelAndView();
    	mv.addObject("memberId", (String)session.getAttribute("memberId"));
        mv.setViewName("user/schedule/calendar");
        return mv;
    }
    
    @PostMapping
    public void saveSchedule(@RequestBody ScheduleDTO scheduleDTO) {
    	scheduleService.saveSchedule(scheduleDTO);
    }
    
    @PutMapping("/{enrollDt}/{memberId}")
    public void updateSchedule(@RequestBody ScheduleDTO scheduleDTO) {
    	System.out.println(scheduleDTO);
    	scheduleService.updateSchedule(scheduleDTO);
    }
    
    @DeleteMapping("/{enrollDt}/{memberId}")
    public void deleteSchedule(@RequestBody ScheduleDTO scheduleDTO) {
        scheduleService.removeSchedule(scheduleDTO);
    }

	
}
