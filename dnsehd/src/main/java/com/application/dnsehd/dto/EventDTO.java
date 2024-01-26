package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class EventDTO {

	private int eventNo;
	private String eventTitle;
	private String eventContent;
	private int eventCost;
	private String eventStartDt;
	private String eventEndDt;
	private int classNo;
	private int teacherNo;
	private String adminId;
	
}