package com.neuedu.hotel.service;

import java.util.List;


import com.neuedu.hotel.entity.Order;

public interface OrderService {
public void insert(Order model);
	
	
	public void delete(long id);
	
	
	public Order getOrderById(long id);
	
	
	public List<Order> getOrders();
	
	public List<Order> getUnfinishedOrders();
	
	public List<Order> getFinishedOrders();
	
	public List<Order> getOrderByusername(String username);
	
	public Order getOrderByRoomidDay(String roomid,String day);
}
