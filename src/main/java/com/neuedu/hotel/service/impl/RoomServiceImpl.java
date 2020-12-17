package com.neuedu.hotel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.hotel.entity.Room;
import com.neuedu.hotel.mapper.RoomMapper;
import com.neuedu.hotel.service.RoomService;

@Service
public class RoomServiceImpl implements RoomService{

	@Autowired
	private RoomMapper roomMapper;
	
	public List<Room> getRooms() {
		return roomMapper.getRooms();
	}

	public Room getRoomById(long id) {
		
		return roomMapper.getRoomById(id);
	}

}
