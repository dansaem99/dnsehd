package com.application.dnsehd.service;

import com.application.dnsehd.dto.ScheduleDTO;

public interface ScheduleService {

	public void addSchedule(ScheduleDTO scheduleDTO);

	public void removeSchedule(int scheduleNo);

}
