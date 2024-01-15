package com.application.dnsehd.service;

import java.util.List;

import com.application.dnsehd.dto.SportDTO;

public interface SportService {

	public List<SportDTO> getClassList();
	public void addClass(SportDTO sportDTO);
	public SportDTO getClassDetail(int sportNo);
	public void modifyClassDetail(SportDTO sportDTO);
	public void removeOneClass(int sportNo);

}
