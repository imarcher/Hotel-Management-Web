package com.neuedu.hotel.entity;

import java.util.Comparator;

import com.neuedu.hotel.entity.timemethod.timemethod;

public class OrderComparatorByday implements Comparator<Order>{

	public int compare(Order o1, Order o2) {
		
		if(timemethod.timeBigger1(o1.getDay(),o2.getDay())) return 1;
		return -1;
	}

}
