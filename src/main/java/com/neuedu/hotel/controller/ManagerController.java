package com.neuedu.hotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neuedu.hotel.entity.Manager;
import com.neuedu.hotel.entity.Order;
import com.neuedu.hotel.entity.User;
import com.neuedu.hotel.entity.timemethod.timemethod;
import com.neuedu.hotel.service.ManagerService;
import com.neuedu.hotel.service.OrderService;
import com.neuedu.hotel.service.RoomService;
import com.neuedu.hotel.service.UserService;

@Controller
@RequestMapping(value = "/manager")
public class ManagerController {

	
	@Autowired
	private UserService userService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private RoomService roomService;
	@Autowired
	private ManagerService managerService;
	
	//������Ϣ
	@RequestMapping(value="/roominfo",method=RequestMethod.GET)
	public String roominfo(Model model) {
		
		model.addAttribute("model", roomService.getRooms());
		return "roominfo";
	}
		
	//δ��ɶ���
	@RequestMapping(value="/unfinishedorder",method=RequestMethod.GET)
	public String unfinishedorder(Model model) {
		
		model.addAttribute("model", orderService.getUnfinishedOrders());
		return "unfinishedorder";
	}
		
	//����ɶ���
		@RequestMapping(value="/finishedorder",method=RequestMethod.GET)
		public String finishedorder(Model model) {
			
			model.addAttribute("model", orderService.getFinishedOrders());
			return "finishedorder";
		}
		
		
		//������������
		@RequestMapping(value="/changemanager/{id}",method=RequestMethod.GET)
		public String changeUser(@PathVariable("id")long id,Model model) {
			model.addAttribute("model",id);
			return "changemanager";
		}
		//������
		@RequestMapping(value="/updatemanager/{id}",method=RequestMethod.POST)
		public String updateUser(@PathVariable("id")long id,String password,Model model) {
			
			Manager manager1 = managerService.getManagerById(id);
			manager1.setPassword(password);
			managerService.updatemanager(manager1);
			model.addAttribute("model", manager1);
			return "index2";
	
		}
		
		//�˷���������ҳ��
		@RequestMapping(value="/optionorders",method=RequestMethod.GET)
		public String optionorders(Model model) {
			
			model.addAttribute("model", orderService.getUnfinishedOrders());
			
			return "optionorders";
		}
		
		//ɾ������
		@RequestMapping(value="/deleteorder/{id}",method=RequestMethod.GET)
		public String optionorders(@PathVariable("id")long id,Model model) {
			
			orderService.delete(id);	
			model.addAttribute("model", orderService.getUnfinishedOrders());		
			return "optionorders";
		}
		//����
		@RequestMapping(value="/reneworder/{id}",method=RequestMethod.GET)
		public String reneworder(@PathVariable("id")long id,Model model) {
			
			Order order = orderService.getOrderById(id);
			String newday = timemethod.renewTime(order.getDay());
			order.setDay(newday);
			
			if(orderService.getOrderByRoomidDay(order.getRoomid(), order.getDay())!=null) {
				model.addAttribute("model1", 1);
				
			}
			else {
				orderService.insert(order);
			}
			model.addAttribute("model", orderService.getUnfinishedOrders());		
			return "optionorders";
		}
		
		
}
