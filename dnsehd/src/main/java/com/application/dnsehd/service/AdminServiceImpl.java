package com.application.dnsehd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.dnsehd.dao.AdminDAO;
import com.application.dnsehd.dto.AdminDTO;
import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.EventDTO;
import com.application.dnsehd.dto.FaqDTO;
import com.application.dnsehd.dto.MemberDTO;
import com.application.dnsehd.dto.NoticeDTO;
import com.application.dnsehd.dto.ReservationDTO;
import com.application.dnsehd.dto.ReviewDTO;
import com.application.dnsehd.dto.TeacherDTO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDAO;

	@Override
	public List<AdminDTO> getAdmin(String adminId) {
		return adminDAO.selectAdmin(adminId);
	}
	

	@Override
	public boolean loginAdmin(AdminDTO adminDTO) {

		AdminDTO validateData = adminDAO.loginAdmin(adminDTO.getAdminId());
		
		System.out.println("validateData = " + validateData);
		
		if (validateData == null) {
			return false;
		} else {
			return true;
		}
		
	}


	@Override
	public List<MemberDTO> getMemberList() {
		return adminDAO.selectMemberList();
	}


	@Override
	public List<ClassDTO> getClassList() {
		return adminDAO.selectClassList();
	}


	@Override
	public List<TeacherDTO> getTeacherList() {
		return adminDAO.selectTeacherList();
	}


	@Override
	public List<ReviewDTO> getReviewList() {
		return adminDAO.selectReviewList();
	}


	@Override
	public List<EventDTO> getEventList() {
		return adminDAO.selectEventList();
	}


	@Override
	public List<ReservationDTO> getResvList() {
		return adminDAO.selectResvList();
	}


	@Override
	public List<NoticeDTO> getNoticeList() {
		return adminDAO.selectNoticeList();
	}


	@Override
	public List<FaqDTO> getFaqList() {
		return adminDAO.selectFaqList();
	}

}
