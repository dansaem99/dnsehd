package com.application.dnsehd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.application.dnsehd.dao.AdminDAO;
import com.application.dnsehd.dto.AdminDTO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDAO;

	@Override
	public List<AdminDTO> getAdmin(String adminId) {
		return adminDAO.selectAdmin(adminId);
	}

	@Override
	public boolean loginAdmin(AdminDTO adminDTO) {

		AdminDTO validateData = adminDAO.loginAdmin(adminDTO.getAdminId(), adminDTO.getAdminPw());
		
		if (validateData == null) {
			return false;
		} else {
			return true;
		}
		
	}

}
