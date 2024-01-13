package com.application.dnsehd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.dnsehd.dao.FaqDAO;
import com.application.dnsehd.dto.FaqDTO;

@Service
public class FaqServiceImpl implements FaqService {

	@Autowired
	private FaqDAO faqDAO;

	@Override
	public void addFaqDetail(FaqDTO faqDTO) {
		// TODO Auto-generated method stub
		faqDAO.insertFaq(faqDTO);
	}

	@Override
	public List<FaqDTO> getFaqList() {
		// TODO Auto-generated method stub
		return faqDAO.selectFaqList();
	}
	
}
