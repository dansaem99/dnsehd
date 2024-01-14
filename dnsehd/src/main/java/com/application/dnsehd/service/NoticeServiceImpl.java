package com.application.dnsehd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.application.dnsehd.dao.NoticeDAO;
import com.application.dnsehd.dto.NoticeDTO;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDAO noticeDAO;
	
	@Override
	public void addNotice(NoticeDTO noticeDTO) {
		noticeDAO.insertNotice(noticeDTO);
	}

	@Override
	public List<NoticeDTO> getNoticeList() {
		return noticeDAO.selectNoticeList();
	}

	@Override
	@Transactional
	public NoticeDTO getNoticeDetail(int noticeNo) {
		return noticeDAO.selectNoticeDetail(noticeNo);
	}

	@Override
	public void modifyNoticeDetail(NoticeDTO noticeDTO) {
		noticeDAO.updateNotice(noticeDTO);
	}

	@Override
	public void removeOneNotice(int noticeNo) {
		noticeDAO.deleteNotice(noticeNo);
	}

}
