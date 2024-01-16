package com.application.dnsehd.service;

import java.util.List;

import com.application.dnsehd.dto.MemberDTO;

public interface MemberService {

	public void addMember(MemberDTO memberDTO);
	public String checkValidId(String memberId);
	public boolean loginMember(MemberDTO memberDTO);
	public MemberDTO getMemberDetail(String memberId);
	public void modifyMember(MemberDTO memberDTO);
	public void modifyInactiveMember(String memberId);
	
	public void getTodayNewMemberCnt();
	public void deleteMemberScheduler();
	
	public List<MemberDTO> getMemberList();
}
