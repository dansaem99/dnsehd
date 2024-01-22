package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class EventImgDTO {
	
	private int eventImgNo;
	private String eventImgNm;
	private String eventImgUUID;
	private int eventNo;
	
}
