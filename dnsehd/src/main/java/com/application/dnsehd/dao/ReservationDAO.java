package com.application.dnsehd.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.application.dnsehd.dto.ReservationDTO;

@Mapper
public interface ReservationDAO {

	public List<Map<String,Object>> selectReservationList();
	public void insertReservation(ReservationDTO reservationDTO);
	public void deleteReservation(int resvNo);

}