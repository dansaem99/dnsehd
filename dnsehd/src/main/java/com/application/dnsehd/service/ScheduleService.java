package com.application.dnsehd.service;

import java.util.Date;

import com.application.dnsehd.dto.ScheduleDTO;

public interface ScheduleService {

	  public void saveSchedule(ScheduleDTO scheduleDTO);
	  public void updateSchedule(ScheduleDTO scheduleDTO);
	  public void removeSchedule(ScheduleDTO scheduleDTO);

}
