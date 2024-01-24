package com.application.dnsehd.dao;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.ScheduleDTO;

@Mapper
public interface ScheduleDAO {

	public void insertSchedule(ScheduleDTO scheduleDTO);

	public void deleteSchedule(int scheduleNo);

}
