package com.teum.service;

import java.util.Date;
import java.util.List;

import com.teum.dao.entity.PrivateReservationListView;
import com.teum.dao.entity.ReservationDetailView;
import com.teum.dao.entity.ReservationForCompanyView;
import com.teum.dao.entity.ReservationListView;
import com.teum.entity.Reservation;

public interface ReservationServiceI {

	//예약관리 페이지(회원)
	List<ReservationListView> getListByUser(int page, int id);
	int getCount(int userId);
	
	//예약관리 페이지(업체)
	List<ReservationForCompanyView> getList(String accIdsCSV, int accType, int page);
	int getItemCount(String accIdsCSV, int accType);
	
	ReservationDetailView getDetail(int id);
	
	List<PrivateReservationListView> getPrivateList(int id, int page1);
	int getPrivateCount(int userId);
}
