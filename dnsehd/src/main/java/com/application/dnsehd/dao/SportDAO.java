package com.application.dnsehd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.SportDTO;

@Mapper
public interface SportDAO {

	public List<SportDTO> selectClassList();

}
