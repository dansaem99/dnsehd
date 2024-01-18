package com.application.dnsehd.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.application.dnsehd.dao.MemberDAO;
import com.application.dnsehd.dto.MemberDTO;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
    private JavaMailSender javaMailSender;
	
	private static Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);

	@Override
	public void addMember(MemberDTO memberDTO) {
		
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
		
		memberDTO.setMemberPw(passwordEncoder.encode(memberDTO.getMemberPw()));
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
		List<MemberDTO> deleteMemberList = memberDAO.selectListInActiveMember();
		if (!deleteMemberList.isEmpty()) {
			for (MemberDTO memberDTO : deleteMemberList) {
				memberDAO.deleteMember(memberDTO.getMemberId());
			}
		}	
	}

	@Override
	public List<MemberDTO> getMemberList() {
		return memberDAO.selectMemberList();
	}

	@Override
	public boolean authenticateMember(MemberDTO memberDTO, String authenticationNo) {
		MemberDTO validateData = memberDAO.selectOneAuthenticateMember(memberDTO.getMemberId());
		
		if (validateData != null) {
			if (memberDTO.getEmail().equals(validateData.getEmail()) && !validateData.getActiveYn().equals("n")) {
				// 이메일 전송
				    SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
				    try{
				        // 1. 메일 수신자 설정
				        String receiveEmail = memberDTO.getEmail();
				        simpleMailMessage.setTo(receiveEmail);

				        // 2. 메일 제목 설정
				        simpleMailMessage.setSubject("DNSEHD 서비스 비밀번호 찾기 인증번호입니다.");

				        // 3. 메일 내용 설정
				        simpleMailMessage.setText("인증번호는 "+ authenticationNo + " 입니다.");

				        // 4. 메일 전송
				        javaMailSender.send(simpleMailMessage);
				    } catch(Exception e){
				        logger.info(e.toString());
				    }
		
				    return true;
				}
			}
		return false;
	}

	@Override
	public void modifyMemberPw(MemberDTO memberDTO) {
		
		memberDTO.setMemberPw(passwordEncoder.encode(memberDTO.getMemberPw()));
		memberDAO.updateMemberPw(memberDTO);
	}
	
}

