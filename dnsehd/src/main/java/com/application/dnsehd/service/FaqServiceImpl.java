package com.application.dnsehd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.application.dnsehd.dao.FaqDAO;
import com.application.dnsehd.dto.FaqDTO;

@Service
public class FaqServiceImpl implements FaqService {

	@Autowired
	private FaqDAO faqDAO;

	@Override
	public void addFaqDetail(FaqDTO faqDTO) {
		faqDAO.insertFaq(faqDTO);
	}

	@Override
	public List<FaqDTO> getFaqList() {
		return faqDAO.selectFaqList();
	}

	@Override
	@Transactional
	public FaqDTO getFaqDetail(String faqQuestion) {
		return faqDAO.selectFaqDetail(faqQuestion);
	}
	
}
