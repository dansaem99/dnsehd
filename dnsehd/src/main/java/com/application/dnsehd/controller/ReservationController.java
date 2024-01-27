package com.application.dnsehd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.application.dnsehd.dto.ReservationDTO;
import com.application.dnsehd.service.ReservationService;

@Controller
public class ReservationController {

	@Autowired
	public ReservationService reservationService;
	
	// admin
	
	@GetMapping("/adReservation")
	public ModelAndView adReservation() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/reservation/reservation");
		mv.addObject("reservationList", reservationService.getReservationList());

		return mv;
		
	}
	
	@GetMapping("/adRemoveReservation")
	public ModelAndView adRemoveReservation(@RequestParam("resvNo") int resvNo,@RequestParam("reviewNo") int reviewNo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/reservation/removeReservation");
		mv.addObject("resvNo", resvNo);
		mv.addObject("reviewNo", reviewNo);
		
		return mv;
		
	}
	
	@PostMapping("/adRemoveReservation")
	public String postRemoveReservation(@RequestParam("resvNo") int resvNo,@RequestParam("reviewNo") int reviewNo) {
		reservationService.removeReview(reviewNo);
		reservationService.removeReservation(resvNo);
		return "redirect:/adReservation";
	}
	
	
	// user
	
	@GetMapping("/reservedClass")
	public ModelAndView reservedClass(@RequestParam("memberId") String memberId) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/mypage/reservedClass");
		mv.addObject("reservationList", reservationService.getReservationDetail(memberId));
		return mv;
		
	}
	
	@GetMapping("/addReservation")
	public ModelAndView addReservation() {
		return new ModelAndView("user/class/classDetail");
	}
	
	@PostMapping("/addReservation")
	public String addReservation(@ModelAttribute ReservationDTO reservationDTO) {
		reservationService.addReservation(reservationDTO);
		return "redirect:class";
	}
	
	@GetMapping("removeReservation")
	public ModelAndView removeReservation() {
		return new ModelAndView("user/mypage/reservedClass");
	}
	
	@PostMapping("removeReservation")
	public String removeReservation(@RequestParam("resvNo") int resvNo,@RequestParam("reviewNo") int reviewNo) {
		reservationService.removeReview(reviewNo);
		reservationService.removeReservation(resvNo);
		return "redirect:reservedClass";
	}
	
}
