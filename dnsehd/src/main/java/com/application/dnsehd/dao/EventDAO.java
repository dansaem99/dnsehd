package com.application.dnsehd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.EventDTO;
import com.application.dnsehd.dto.ClassDTO;

@Mapper
public interface EventDAO {

	public List<EventDTO> selectEventList();
	public void insertEvent(EventDTO eventDTO);
	public List<ClassDTO> selectClassList();

}
