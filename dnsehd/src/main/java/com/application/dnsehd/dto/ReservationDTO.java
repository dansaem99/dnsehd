package com.application.dnsehd.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ReservationDTO {

	private int resvNo;
	private int payment;
	private Date resvDt;
	private String resvAlarm;
	private String memberId;
	private int classNo;
	
}
