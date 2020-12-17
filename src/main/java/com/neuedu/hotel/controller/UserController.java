package com.neuedu.hotel.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neuedu.hotel.entity.Order;
import com.neuedu.hotel.entity.Room;
import com.neuedu.hotel.entity.User;
import com.neuedu.hotel.entity.timemethod.timemethod;
import com.neuedu.hotel.service.OrderService;
import com.neuedu.hotel.service.RoomService;
import com.neuedu.hotel.service.UserService;

@Controller
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private RoomService roomService;
	
	private int pageSize=2;
	
	
	//进入改密码界面
	@RequestMapping(value="/changeuser/{id}",method=RequestMethod.GET)
	public String changeUser(@PathVariable("id")long id,Model model) {
		model.addAttribute("model",id);
		return "changeuser";
	}
	//改密码
	@RequestMapping(value="/updateuser/{id}",method=RequestMethod.POST)
	public String updateUser(@PathVariable("id")long id,String password,Model model) {
		
		User user1 = userService.getUserById(id);
		user1.setPassword(password);
		userService.update(user1);
		model.addAttribute("model",user1);
		return "index";
	}
	
	
	//注册成功
	@RequestMapping(value="/adduser",method=RequestMethod.POST)
	public String saveUser(User u,Model model) {
		
		if(userService.getUserByusername(u.getUsername())!=null) {
			
			model.addAttribute("model", 1);
			return "register";
		}
		
		userService.insert(u);
		
		
		model.addAttribute("model", 2);
		return "login";
	}
	//添加订单页面之查看未完成订单
	@RequestMapping(value="/bookuser/{id}",method=RequestMethod.GET)
	public String bookUser(@PathVariable("id")long id,Model model) {
		model.addAttribute("model1",id);
	
		
		model.addAttribute("model2", orderService.getUnfinishedOrders());
	//	System.out.println(orderService.getUnfinishedOrders().size());
		return "bookuser";
	}
	//添加订单页面之添加
	@RequestMapping(value="/addorder/{id}",method=RequestMethod.GET)
	public String addorder(@PathVariable("id")long id,Model model) {
		model.addAttribute("model1",id);
		model.addAttribute("model2", roomService.getRooms());
		return "addorder";
	}
	//执行添加
	@RequestMapping(value="/saveorder/{id}",method=RequestMethod.POST)
	public String saveorder(@PathVariable("id")long id,long rid,String day,Model model) {
		
		
		Pattern patterntime1 = Pattern.compile("\\d{4}-\\d{2}-\\d{2}");
		Matcher matchertime1 = patterntime1.matcher(day);
		//日期格式
		if (!matchertime1.matches()) {
			model.addAttribute("model1",id);
			model.addAttribute("model2", roomService.getRooms());
			model.addAttribute("model", 2);
			return "addorder";
		}
		
		LocalDate date = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");  

		String today = date.format(formatter) ;
		
		//大于等于今天
			if(!timemethod.timeBigger1(day, today)) {
				model.addAttribute("model1",id);
				model.addAttribute("model2", roomService.getRooms());
				model.addAttribute("model", 2);
				return "addorder";
			}
		
		
		Room room = roomService.getRoomById(rid);
		Order order = new Order();
		order.setRoomid(room.getRoomid());
		order.setRoomtype(room.getRoomtype());
		order.setPrice(room.getPrice());
		order.setUsername(userService.getUserById(id).getUsername());
		order.setDay(day);
		
		if(orderService.getOrderByRoomidDay( room.getRoomid(),  day)!=null) {
			model.addAttribute("model1",id);
			model.addAttribute("model2", roomService.getRooms());
			model.addAttribute("model", 1);
			return "addorder";
			
		}
		
		orderService.insert(order);
		return "success";
	}
	
	//查看我的订单
	
	@RequestMapping(value="/myorder/{id}",method=RequestMethod.GET)
	public String myorder(@PathVariable("id")long id,Model model) {
	
		User user = userService.getUserById(id);
		String username = user.getUsername();
		
		model.addAttribute("model", orderService.getOrderByusername(username));
		return "myorder";
		
	}
	
	
}
