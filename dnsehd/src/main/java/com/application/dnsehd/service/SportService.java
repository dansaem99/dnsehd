package com.application.dnsehd.service;

import java.util.List;

import com.application.dnsehd.dto.SportDTO;

public interface SportService {

	public List<SportDTO> getClassList();
	public String admin();

}
