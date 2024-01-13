package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class FaqDTO {

	int faqNo;
	String faqQuestion;
	String faqAnswer;

}
