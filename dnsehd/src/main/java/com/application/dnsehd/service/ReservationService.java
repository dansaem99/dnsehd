package com.application.dnsehd.service;

import java.util.List;
import java.util.Map;

import com.application.dnsehd.dto.ReservationDTO;

public interface ReservationService {

	public List<Map<String,Object>> getReservationList();
	public void addReservation(ReservationDTO reservationDTO);
	public void removeReview(int reviewNo);
	public void removeReservation(int resvNo);
	public List<ReservationDTO> getReservationDetail(String memberId);

}
