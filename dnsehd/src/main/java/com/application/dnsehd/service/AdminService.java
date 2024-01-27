package com.application.dnsehd.service;

import java.util.List;

import com.application.dnsehd.dto.AdminDTO;
import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.EventDTO;
import com.application.dnsehd.dto.FaqDTO;
import com.application.dnsehd.dto.MemberDTO;
import com.application.dnsehd.dto.NoticeDTO;
import com.application.dnsehd.dto.ReservationDTO;
import com.application.dnsehd.dto.ReviewDTO;
import com.application.dnsehd.dto.TeacherDTO;

public interface AdminService {
	
	public List<AdminDTO> getAdmin(String adminId);
	public boolean loginAdmin(AdminDTO adminDTO);
	public List<MemberDTO> getMemberList();
	public List<ClassDTO> getClassList();
	public List<TeacherDTO> getTeacherList();
	public List<ReviewDTO> getReviewList();
	public List<EventDTO> getEventList();
	public List<ReservationDTO> getResvList();
	public List<NoticeDTO> getNoticeList();
	public List<FaqDTO> getFaqList();
	
}
