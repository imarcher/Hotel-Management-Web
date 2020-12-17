package com.neuedu.hotel.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


import com.neuedu.hotel.entity.User;

public interface UserMapper {
	@Insert("insert into user (username,password) values (#{username},#{password})")
	@Options(useGeneratedKeys = true)
	public void insert(User model);
	
	@Update("update user set username=#{username},password=#{password} where id=#{id}")
	public void update(User model);
	
	@Select("select id,username,password from user where username=#{username}")
	public User getUserByusername(String username);
	
	@Select("select id,username,password from user where id=#{id}")
	public User getUserById(long id);
	
}
