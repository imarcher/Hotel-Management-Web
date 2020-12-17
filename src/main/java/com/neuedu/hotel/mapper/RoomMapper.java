package com.neuedu.hotel.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.neuedu.hotel.entity.Room;

import com.neuedu.hotel.entity.User;

public interface RoomMapper {

	@Select("select id,roomid,roomtype,price from room")
	public List<Room> getRooms();
	
	@Select("select id,roomid,roomtype,price from room where id=#{id}")
	public Room getRoomById(long id);
	
}
