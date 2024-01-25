package com.application.dnsehd.service;

import java.util.Date;

import com.application.dnsehd.dto.ScheduleDTO;

public interface ScheduleService {

	  public void saveOrUpdateSchedule(ScheduleDTO scheduleDTO);
	  public void removeSchedule(ScheduleDTO scheduleDTO);
	// 수민 언니가 한 부분 주석처리
//	public void addSchedule(ScheduleDTO scheduleDTO);
//	public void removeSchedule(int scheduleNo);

}
