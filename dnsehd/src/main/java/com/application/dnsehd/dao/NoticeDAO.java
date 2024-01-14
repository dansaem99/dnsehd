package com.application.dnsehd.dao;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.NoticeDTO;

@Mapper
public interface NoticeDAO {

	public void insertNotice(NoticeDTO noticeDTO);

	
	
}
