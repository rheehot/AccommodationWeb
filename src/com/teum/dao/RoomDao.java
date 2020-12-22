package com.teum.dao;

import java.util.List;

import com.teum.dao.entity.OfferInfoView;
import com.teum.dao.entity.OfferableRoomListView;
import com.teum.dao.entity.PayInfoView;
import com.teum.dao.entity.RoomImageListView;
import com.teum.entity.Room;

public interface RoomDao {

	int insert(Room room);

	Room getLast();

	List<RoomImageListView> getList(String accIdsCSV);

	List<OfferInfoView> getOfferInfoList(int startIndex,int endIndex,int offerId);

//	List<OfferableRoomListView> getOfferableRoomList(int startIndex, int endIndex, int offerId);
	List<OfferableRoomListView> getOfferableRoomList(int offerId);
	int getOfferCount(int offerId);

	int getId(int roomId);

	Room get(int roomId);

	PayInfoView getList(int accId, int roomId);

	int update(int accId, int roomId, String bookedDates);

	List<RoomImageListView> getViewList(int accId);

}
