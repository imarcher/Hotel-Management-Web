package com.neuedu.hotel.mapper;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.neuedu.hotel.entity.Manager;
import com.neuedu.hotel.entity.User;

public interface ManagerMapper {

	@Select("select id,username,password from manager where username=#{username}")
	public Manager getManagerByusername(String username);
	
	@Select("select id,username,password from manager where id=#{id}")
	public Manager getManagerById(long id);
	
	@Update("update manager set username=#{username},password=#{password} where id=#{id}")
	public void updatemanager(Manager model);
}
