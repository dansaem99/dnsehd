package com.application.dnsehd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.MemberDTO;

@Mapper
public interface MemberDAO {
	
	public void insertMember(MemberDTO memberDTO);
	public String selectOneCheckValidId(String memberId);
	public MemberDTO selectOneloginMember(String memberId);
	public MemberDTO selectOneMember(String memberId);
	public void updateMember(MemberDTO memberDTO);
	public void updateInactiveMember(String memberId);
	
	public int selectOneTodayNewMemberCnt(String today);
	public List<MemberDTO> selectListInActiveMember();
	public void deleteMember(String memberId);
	
}
