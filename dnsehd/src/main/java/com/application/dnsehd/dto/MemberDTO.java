package com.application.dnsehd.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class MemberDTO {

	private String memberId;
	private String memberNm;
	private String memberPw;
	private String sex;
	private String dateBirth;
	private String hp;
	private String email;
	private String emailConsent;
	private String zipcode;
	private String roadAddress;
	private String jibunAddress;
	private String otherAddress;
	private String activeYn;
	private Date inactiveAt;
	private Date joinAt;
	
}
