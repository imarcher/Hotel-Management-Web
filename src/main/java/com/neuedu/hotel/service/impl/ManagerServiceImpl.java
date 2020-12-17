package com.neuedu.hotel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neuedu.hotel.entity.Manager;
import com.neuedu.hotel.mapper.ManagerMapper;
import com.neuedu.hotel.service.ManagerService;


@Service
public class ManagerServiceImpl implements ManagerService{
	@Autowired
	private ManagerMapper managerMapper;
	
	public Manager getManagerByusername(String username) {
		
		return managerMapper.getManagerByusername(username);
	}

	public Manager getManagerById(long id) {
		return managerMapper.getManagerById(id);
	}
	
	public void updatemanager(Manager model) {
		 managerMapper.updatemanager(model);
	}
}
