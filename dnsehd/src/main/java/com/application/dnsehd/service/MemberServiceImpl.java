package com.application.dnsehd.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.application.dnsehd.dao.MemberDAO;
import com.application.dnsehd.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	private static Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);

	@Override
	public void addMember(MemberDTO memberDTO) {
		
		if (memberDTO.getSmsConsent() == null) memberDTO.setSmsConsent("n");
		if (memberDTO.getEmailConsent() == null) memberDTO.setEmailConsent("n");
		
		memberDTO.setMemberPw(passwordEncoder.encode(memberDTO.getMemberPw()));
		memberDAO.insertMember(memberDTO);
	}

	@Override
	public String checkValidId(String memberId) {

		String isValidId = "y";
		if (memberDAO.selectOneCheckValidId(memberId) != null) {
			isValidId = "n";
		}
		
		return isValidId;
	}

	@Override
	public boolean loginMember(MemberDTO memberDTO) {

		MemberDTO validateData = memberDAO.selectOneloginMember(memberDTO.getMemberId());
		
		if (validateData != null) {
			if (passwordEncoder.matches(memberDTO.getMemberPw(), validateData.getMemberPw()) && !validateData.getActiveYn().equals("n")) {
				return true;
			}
		}
		
		return false;
	}

	@Override
	public MemberDTO getMemberDetail(String memberId) {
		return memberDAO.selectOneMember(memberId);
	}

	@Override
	public void modifyMember(MemberDTO memberDTO) {
		memberDAO.updateMember(memberDTO);
	}

	@Override
	public void modifyInactiveMember(String memberId) {
		memberDAO.updateInactiveMember(memberId);
	}

	@Override
	@Scheduled(cron="59 59 23 * * *")
	public void getTodayNewMemberCnt() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String today = sdf.format(new Date());
		logger.info("(" + today + ") 신규회원수 : " + memberDAO.selectOneTodayNewMemberCnt(today));
	}

	@Override
	public void deleteMemberScheduler() {
		
		
	}
	
}
