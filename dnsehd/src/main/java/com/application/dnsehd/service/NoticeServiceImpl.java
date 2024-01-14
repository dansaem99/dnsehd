package com.application.dnsehd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.dnsehd.dao.NoticeDAO;
import com.application.dnsehd.dto.NoticeDTO;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDAO noticeDAO;
	
	@Override
	public void addNotiveDetail(NoticeDTO noticeDTO) {
		noticeDAO.insertNotice(noticeDTO);
	}

}
