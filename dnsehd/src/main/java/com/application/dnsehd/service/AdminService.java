package com.application.dnsehd.service;

import java.util.List;

import com.application.dnsehd.dto.AdminDTO;

public interface AdminService {
	
	public List<AdminDTO> getAdmin(String adminId);
	public boolean loginAdmin(AdminDTO adminDTO);
	
}
