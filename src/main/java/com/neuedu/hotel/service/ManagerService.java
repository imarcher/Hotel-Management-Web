package com.neuedu.hotel.service;

import com.neuedu.hotel.entity.Manager;

public interface ManagerService {
	public Manager getManagerByusername(String username);
	
	public Manager getManagerById(long id);
	
	public void updatemanager(Manager model);
}
