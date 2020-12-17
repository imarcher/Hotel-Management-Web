package com.neuedu.hotel.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.neuedu.hotel.entity.Order;


public interface OrderMapper {

	@Insert("insert into orders (roomid,roomtype,price,username,day) values (#{roomid},#{roomtype},#{price},#{username},#{day})")
	@Options(useGeneratedKeys = true)
	public void insert(Order model);
	
	@Delete("delete from orders where id=#{id}")
	public void delete(long id);
	
	@Select("select id,roomid,roomtype,price,username,day from orders where id=#{id}")
	public Order getOrderById(long id);
	
	@Select("select id,roomid,roomtype,price,username,day from orders")
	public List<Order> getOrders();
	
	@Select("select id,roomid,roomtype,price,username,day from orders where username=#{username}")
	public List<Order> getOrderByusername(String username);
	
	@Select("select id,roomid,roomtype,price,username,day from orders where roomid=#{roomid} and day=#{day}")
	public Order getOrderByRoomidDay(@Param("roomid")  String roomid,@Param("day")  String day);
}
