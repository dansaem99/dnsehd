package com.application.dnsehd.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ScheduleDTO {

	private int schrduleNo;
	private Date enrollDt;
	private String memo;
	private String breakfast;
	private String lunch;
	private String dinner;
	private String snack;
	private String midnightSnack;
	private String memberId;
	
}
