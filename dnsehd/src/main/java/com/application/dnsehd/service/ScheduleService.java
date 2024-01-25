package com.application.dnsehd.service;

import java.util.HashMap;

import com.application.dnsehd.dto.ScheduleDTO;

public interface ScheduleService {

	  public ScheduleDTO findSchedule(HashMap<String, String> infoMap);
	  public void saveSchedule(ScheduleDTO scheduleDTO);
	  public void updateSchedule(ScheduleDTO scheduleDTO);
	  public void removeSchedule(ScheduleDTO scheduleDTO);

}
