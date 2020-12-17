package com.neuedu.hotel.service;




import com.neuedu.hotel.entity.User;

public interface UserService {

	public void insert(User model);
	
	public void update(User model);

	public User getUserByusername(String username);
	
	public User getUserById(long id);
}
