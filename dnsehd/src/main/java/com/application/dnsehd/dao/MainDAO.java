package com.application.dnsehd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.EventDTO;

@Mapper
public interface MainDAO {

	public List<EventDTO> selectEventList();

}
