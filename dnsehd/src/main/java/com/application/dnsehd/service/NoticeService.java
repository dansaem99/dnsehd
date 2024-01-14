package com.application.dnsehd.service;

import java.util.List;

import com.application.dnsehd.dto.NoticeDTO;

public interface NoticeService {

	public void addNotice(NoticeDTO noticeDTO);
	public List<NoticeDTO> getNoticeList();
	public NoticeDTO getNoticeDetail(int noticeNo);
	public void modifyNoticeDetail(NoticeDTO noticeDTO);
	public void removeOneNotice(int noticeNo);

}
