package com.application.dnsehd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.AdminDTO;

@Mapper
public interface AdminDAO {

	public List<AdminDTO> selectAdmin(String adminId);
	public AdminDTO loginAdmin(String adminId, String adminPw);
	
}
