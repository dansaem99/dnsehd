package com.application.dnsehd.dao;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.MemberDTO;

@Mapper
public interface MemberDAO {
	
	public void insertMember(MemberDTO memberDTO);
	public String selectOneCheckValidId(String memberId);
	public MemberDTO selectOneloginMember(String memberId);
	public MemberDTO selectOneMember(String memberId);
	public void updateMember(MemberDTO memberDTO);
}
