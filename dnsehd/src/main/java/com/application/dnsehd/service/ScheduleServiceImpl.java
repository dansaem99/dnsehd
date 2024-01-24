package com.application.dnsehd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.dnsehd.dao.ScheduleDAO;
import com.application.dnsehd.dto.ScheduleDTO;

@Service
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private ScheduleDAO scheduleDAO;
	
	@Override
	public void addSchedule(ScheduleDTO scheduleDTO) {
		scheduleDAO.insertSchedule(scheduleDTO);
	}

	@Override
	public void removeSchedule(int scheduleNo) {
		scheduleDAO.deleteSchedule(scheduleNo);
	}

}
