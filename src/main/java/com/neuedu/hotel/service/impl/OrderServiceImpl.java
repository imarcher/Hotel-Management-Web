package com.neuedu.hotel.service.impl;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.hotel.entity.Order;
import com.neuedu.hotel.entity.OrderComparatorByday;
import com.neuedu.hotel.entity.timemethod.timemethod;
import com.neuedu.hotel.mapper.OrderMapper;
import com.neuedu.hotel.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderMapper orderMapper;
	
	public void insert(Order model) {
		orderMapper.insert(model);
		
	}

	public void delete(long id) {
		orderMapper.delete(id);
		
	}

	public Order getOrderById(long id) {
	
		return orderMapper.getOrderById(id);
	}

	public List<Order> getOrders() {
		
		return orderMapper.getOrders();
	}

	public List<Order> getUnfinishedOrders() {
		List<Order> allOrders = getOrders();
		List<Order> unfinishedOrders = new ArrayList<Order>();
		Collections.sort(allOrders,new OrderComparatorByday());
		
		LocalDate date = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");  

		String today = date.format(formatter) ;
		
		for(int i=0;i<allOrders.size();i++) {
			if(timemethod.timeBigger1(allOrders.get(i).getDay(), today)) unfinishedOrders.add(allOrders.get(i));
		}
		
		return unfinishedOrders;
	}

	public List<Order> getFinishedOrders() {
		List<Order> allOrders = getOrders();
		List<Order> finishedOrders = new ArrayList<Order>();
		Collections.sort(allOrders,new OrderComparatorByday());
		
		LocalDate date = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");  

		String today = date.format(formatter) ;
		
		for(int i=0;i<allOrders.size();i++) {
			if(timemethod.timeBigger2(today,allOrders.get(i).getDay() )) finishedOrders.add(allOrders.get(i));
		}
		
		Collections.reverse(finishedOrders);
		
		return finishedOrders;
	}
	
	public List<Order> getOrderByusername(String username){
		return orderMapper.getOrderByusername(username);
	}
	
	public Order getOrderByRoomidDay(String roomid,String day) {
		return orderMapper.getOrderByRoomidDay(roomid, day);
	}

}
