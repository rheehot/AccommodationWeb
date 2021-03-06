package com.teum.dao.entity;

import java.util.Date;

import com.teum.entity.Event;

public class EventListView extends Event {

	private int rownum;
	
	public EventListView() {
		
	}
	
	public EventListView(int id, String title, int openStatus, String imageName, String imageRoute, int status,
			Date startDate, Date endDate, Date regdate, int adminId, int rownum) {
		super(id, title, openStatus, imageName, imageRoute, status, startDate, endDate, regdate, adminId);
		this.rownum = rownum;
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

}
