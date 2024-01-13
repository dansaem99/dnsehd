package com.application.dnsehd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.FaqDTO;

@Mapper
public interface FaqDAO {
	public void insertFaq(FaqDTO faqDTO);
	public List<FaqDTO> selectFaqList();
}
