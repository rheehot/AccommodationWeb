package com.teum.service;

import java.util.ArrayList;
import java.util.List;

import com.teum.dao.ReservationDao;
import com.teum.dao.entity.ReservationForCompanyView;
import com.teum.dao.entity.ReservationListView;
import com.teum.dao.jdbc.JdbcReservationDao;
import com.teum.entity.Reservation;

public class ReservationService implements ReservationServiceI {
	private ReservationDao reservationDao;
	
	public ReservationService() {
		reservationDao = new JdbcReservationDao();
	}

	@Override
	public List<ReservationListView> getListByUser(int page,int id) {
		List<ReservationListView> list = new ArrayList<>();
		int startIndex = 1+(page-1)*4;
		int endIndex = page*4;
		
		list = reservationDao.getListByUser(startIndex,endIndex,id);
		
		return list;
	}
	
	@Override
	public int getCount(int userId) {
		int result = 0;
		
		result = reservationDao.getCount(userId);
		
		return result;
	}
	@Override
	public List<ReservationForCompanyView> getList(String accIdsCSV, int accType, int page) {
		List<ReservationForCompanyView> list = new ArrayList<>();
		
		int startIndex = 1+(page-1)*10;
		int endIndex = page*10;
		
		list = reservationDao.getList(startIndex, endIndex, accIdsCSV, accType);
		
		return list;
	}

}