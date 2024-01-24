package com.application.dnsehd.dto;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@Data
@Entity
public class ScheduleDTO {

	@Id
	private int scheduleNo;
	
	@Temporal(TemporalType.DATE)
	private Date enrollDt;
	
	@Column
	private String memo;
	
	@Column
	private String breakfast;
	
	@Column
	private String lunch;
	
	@Column
	private String dinner;
	
	@Column
	private String snack;
	
	@Column
	private String midnightSnack;
	
	@JoinColumn
	private String memberId;
	
	@JoinColumn
	private int classNo;
	
	@JoinColumn
	private int resvNo;
	
}
