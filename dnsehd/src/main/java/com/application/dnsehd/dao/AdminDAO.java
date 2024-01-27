package com.application.dnsehd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.AdminDTO;
import com.application.dnsehd.dto.ClassDTO;
import com.application.dnsehd.dto.EventDTO;
import com.application.dnsehd.dto.FaqDTO;
import com.application.dnsehd.dto.MemberDTO;
import com.application.dnsehd.dto.NoticeDTO;
import com.application.dnsehd.dto.ReservationDTO;
import com.application.dnsehd.dto.ReviewDTO;
import com.application.dnsehd.dto.TeacherDTO;

@Mapper
public interface AdminDAO {

	public List<AdminDTO> selectAdmin(String adminId);
	public AdminDTO loginAdmin(String adminId);
	public List<MemberDTO> selectMemberList();
	public List<ClassDTO> selectClassList();
	public List<TeacherDTO> selectTeacherList();
	public List<ReviewDTO> selectReviewList();
	public List<EventDTO> selectEventList();
	public List<ReservationDTO> selectResvList();
	public List<NoticeDTO> selectNoticeList();
	public List<FaqDTO> selectFaqList();
	
}
