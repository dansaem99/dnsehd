package com.application.dnsehd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.NoticeDTO;

@Mapper
public interface NoticeDAO {

	public void insertNotice(NoticeDTO noticeDTO);
	public List<NoticeDTO> selectNoticeList();
	public NoticeDTO selectNoticeDetail(int noticeNo);
	public void updateNotice(NoticeDTO noticeDTO);
	public void deleteNotice(int noticeNo);
	
}
