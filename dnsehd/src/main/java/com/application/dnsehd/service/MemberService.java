package com.application.dnsehd.service;

import com.application.dnsehd.dto.MemberDTO;

public interface MemberService {

	public void addMember(MemberDTO memberDTO);
	public String checkValidId(String memberId);
	public boolean loginMember(MemberDTO memberDTO);
	public MemberDTO getMemberDetail(String memberId);
}
