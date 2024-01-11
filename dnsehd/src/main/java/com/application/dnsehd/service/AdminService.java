package com.application.dnsehd.service;

import java.util.List;

import com.application.dnsehd.dto.AdminDTO;

public interface AdminService {
	List<AdminDTO> getAdmin(String adminId);
}
