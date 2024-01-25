package com.application.dnsehd.dao;

import java.util.Date;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.ScheduleDTO;

@Mapper
public interface ScheduleDAO {

	public void saveOrUpdateSchedule(ScheduleDTO scheduleDTO);
	public void removeSchedule(Date enrollDt);
	// 수민 언니가 한 부분 주석처리
//	public void insertSchedule(ScheduleDTO scheduleDTO);
//	public void deleteSchedule(int scheduleNo);

}
