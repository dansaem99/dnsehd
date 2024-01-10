package com.application.dnsehd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

	// 1. 프로젝트 실행 확인용 view와 맵핑
	@GetMapping("/test")
	public String test() {
		return "designTest/home";
	}
	
	// 2-1. ashion-master 원본 view와 맵핑
	@GetMapping("/blog")
	public String blog() {
		return "ashion-master_sample/blog";
	}	

	@GetMapping("/blogDetails")
	public String blogDetails() {
		return "ashion-master_sample/blog-details";
	}	
	
	@GetMapping("/checkout")
	public String checkout() {
		return "ashion-master_sample/checkout";
	}	
	
	@GetMapping("/contact")
	public String contact() {
		return "ashion-master_sample/contact";
	}	
	
	@GetMapping("/index")
	public String index() {
		return "ashion-master_sample/index";
	}	
	
	@GetMapping("/productDetails")
	public String productDetails() {
		return "ashion-master_sample/product-details";
	}	
	
	@GetMapping("/shop")
	public String shop() {
		return "ashion-master_sample/shop";
	}	
	
	@GetMapping("/shop-cart")
	public String shopCart() {
		return "ashion-master_sample/shop-cart";
	}	
	
	// 2-2. modernize 원본 view와 맵핑
	@GetMapping("/authentication-login")
	public String authenticationLogin() {
		return "modernize_sample/authentication-login";
	}	

	@GetMapping("/authentication-register")
	public String authenticationRegister() {
		return "modernize_sample/authentication-register";
	}	
	
	// 2-3. sbadminPro 원본 view와 맵핑
	@GetMapping("/layout-fluid")
	public String layoutFluid() {
		return "sbadminPro_sample/layout-fluid";
	}	
	
	@GetMapping("/knowledge-base-category")
	public String knowledgeBaseCategory() {
		return "sbadminPro_sample/knowledge-base-category";
	}	
	
	@GetMapping("/knowledge-base-article")
	public String knowledgeBaseArticle() {
		return "sbadminPro_sample/knowledge-base-article";
	}	
	
	// 2-4. sneat 원본 view와 맵핑
	@GetMapping("/ui-alerts")
	public String uiAlerts() {
		return "sneat_sample/ui-alerts";
	}

	@GetMapping("/ui-toasts")
	public String uiToasts() {
		return "sneat_sample/ui-toasts";
	}
	
	@GetMapping("/ui-modals")
	public String uiModals() {
		return "sneat_sample/ui-modals";
	}
	
	// 3. 디자인 테스트용으로 수정한 view와 맵핑
// (복붙해서 사용)
//	@GetMapping("/")
//	public String () {
//		return "designTest/";
//	}	

	/* MemberController에 사용 완료 */
	/*
	@GetMapping("/register")
	public String register() {
		return "user/member/register";
	}	
	
	@GetMapping("/login")
	public String login() {
		return "user/member/login";
	}	

	@GetMapping("/main")
	public String main() {
		return "designTest/main";
	}	
	
	@GetMapping("/class")
	public String findClass() {
		return "designTest/class";
	}	

	@GetMapping("/classDetail")
	public String classDetail() {
		return "designTest/classDetail";
	}	

	@GetMapping("/teacher")
	public String findTeacher() {
		return "designTest/teacher";
	}	

	@GetMapping("/teacherDetail")
	public String teacherDetail() {
		return "designTest/teacherDetail";
	}	

	@GetMapping("/calendar")
	public String calendar() {
		return "designTest/calendar";
	}	
	
	@GetMapping("/review")
	public String review() {
		return "designTest/review";
	}	
	
	@GetMapping("/reviewDetail")
	public String reviewDetail() {
		return "designTest/reviewDetail";
	}	
	
	@GetMapping("/notice")
	public String notice() {
		return "designTest/notice";
	}	

	@GetMapping("/noticeDetail")
	public String noticeDetail() {
		return "designTest/noticeDetail";
	}	
	
	@GetMapping("/faq")
	public String faq() {
		return "designTest/faq";
	}	
	
	@GetMapping("/mypage")
	public String mypage() {
		return "designTest/mypage";
	}	
	
	@GetMapping("/addReview")
	public String addReview() {
		return "designTest/addReview";
	}

	 */

	@GetMapping("/alarm")
	public String alarmTest() {
		return "designTest/alarm";
	}
	
	@GetMapping("/alarmBody") 
	public String alarmBody() {
		return "designTest/alarmBody";
	}

	// 4. admin view와 맵핑
	// ..을 고쳐서 사용
//	@GetMapping("/ad..")
//	public String  admin..() {
//		return "admin/sneat/..";
//	}
	
	@GetMapping("/adTable")
	public String  adTable() {
		return "admin/sneat/table";
	}
	
	@GetMapping("/adMain")
	public String  adminMain() {
		return "admin/sneat/main";
	}
	
	@GetMapping("/adMember")
	public String  adminMember() {
		return "admin/sneat/member";
	}
	
	@GetMapping("/adLogin")
	public String  adminLogin() {
		return "admin/sneat/login";
	}
	
	@GetMapping("/adClass")
	public String  adminClass() {
		return "admin/sneat/class";
	}
	
	@GetMapping("/adModifyMember")
	public String  adminModifyMember() {
		return "admin/sneat/modifyMember";
	}
	
	@GetMapping("/adAddClass")
	public String  adminAddClass() {
		return "admin/sneat/addClass";
	} 
	
	@GetMapping("/adModifyClass")
	public String  adminModifyClass() {
		return "admin/sneat/modifyClass";
	}
	
	@GetMapping("/adTeacher")
	public String  adminTeacher() {
		return "admin/sneat/teacher";
	}
	
	@GetMapping("/adAddTeacher")
	public String adminAddTeacher() {
		return "admin/sneat/addTeacher";
	}
	
	@GetMapping("/adModifyTeacher")
	public String  adminModifyTeacher() {
		return "admin/sneat/modifyTeacher";
	}
	
	@GetMapping("/adReview")
	public String  adminReview() {
		return "admin/sneat/review";
	} 
	
	@GetMapping("/adReviewDetail")
	public String  adminReviewDetail() {
		return "admin/sneat/reviewDetail";
	}
	
	@GetMapping("/adEvent")
	public String  adminEvent() {
		return "admin/sneat/event";
	}
	
	@GetMapping("/adAddEvent")
	public String adminAddEvent() {
		return "admin/sneat/addEvent";
	}
	
	@GetMapping("/adModifyEvent")
	public String  adminModifyEvent() {
		return "admin/sneat/modifyEvent";
	}
	
	@GetMapping("/adReservation")
	public String  adminReservation() {
		return "admin/sneat/reservation";
	}
	
	@GetMapping("/adReservationDetail")
	public String  adminReservationDetail() {
		return "admin/sneat/reservationDetail";
	}
	
	@GetMapping("/adNotice")
	public String  adminNotice() {
		return "admin/sneat/notice";
	}
	
	@GetMapping("/adAddNotice")
	public String adminAddNotice() {
		return "admin/sneat/addNotice";
	}
	
	@GetMapping("/adModifyNotice")
	public String  adminModifyNotice() {
		return "admin/sneat/modifyNotice";
	}
	
	@GetMapping("/adFaq")
	public String  adminFaq() {
		return "admin/sneat/faq";
	}
	
	@GetMapping("/adAddFaq")
	public String adminAddFaq() {
		return "admin/sneat/addFaq";
	}
	
	@GetMapping("/adModifyFaq")
	public String  adminModifyFaq() {
		return "admin/sneat/modifyFaq";
	}
	
}
