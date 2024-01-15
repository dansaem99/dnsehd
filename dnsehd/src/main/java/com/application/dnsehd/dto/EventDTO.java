package com.application.dnsehd.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class EventDTO {

	private int eventNo;
	private String eventTitle;
	private String eventContent;
	private int eventCost;
	private Date eventStartDt;
	private Date eventEndDt;
	private int sportNo;
	private String adminId;
	
}