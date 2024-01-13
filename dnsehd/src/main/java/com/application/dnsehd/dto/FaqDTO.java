package com.application.dnsehd.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class FaqDTO {

	String faqQuestion;
	String faqAnswer;

}
