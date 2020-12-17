package com.neuedu.hotel.service;

import java.util.List;

import com.neuedu.hotel.entity.Room;

public interface RoomService {

	
	public List<Room> getRooms();
	
	public Room getRoomById(long id);
}
