package com.application.dnsehd.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class NoticeDTO {

	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private Date noticeDate;
	private String adminId;
	
}
