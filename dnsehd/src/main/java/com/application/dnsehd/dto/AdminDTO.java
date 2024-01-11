package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class AdminDTO {

	private String adminId;
	private String adminPw;
	
}
