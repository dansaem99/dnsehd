package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class FaqDTO {

	private int faqNo;
	private String faqQuestion;
	private String faqAnswer;
	private String adminId;
}
