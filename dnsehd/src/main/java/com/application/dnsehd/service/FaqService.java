package com.application.dnsehd.service;

import java.util.List;

import com.application.dnsehd.dto.FaqDTO;

public interface FaqService {

	public void addFaqDetail(FaqDTO faqDTO);
	public List<FaqDTO> getFaqList();
	public FaqDTO getFaqDetail(String faqQuestion);
	
}
