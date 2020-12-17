package com.neuedu.hotel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.neuedu.hotel.entity.User;
import com.neuedu.hotel.mapper.UserMapper;
import com.neuedu.hotel.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;

	public void insert(User model) {
		userMapper.insert(model);
		
	}

	public void update(User model) {
		userMapper.update(model);
	}

	public User getUserByusername(String username) {
		return userMapper.getUserByusername(username);
	}
	
	public User getUserById(long id) {
		return userMapper.getUserById(id);
	}
}
