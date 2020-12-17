package com.neuedu.hotel.controller;

import org.apache.catalina.manager.ManagerServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neuedu.hotel.entity.Manager;
import com.neuedu.hotel.entity.User;
import com.neuedu.hotel.service.ManagerService;
import com.neuedu.hotel.service.UserService;

@Controller
@RequestMapping(value = "/hotel")
public class LogRegController {

	@Autowired
	private UserService userService;
	@Autowired
	private ManagerService managerService;
	
	@RequestMapping(value="/log",method=RequestMethod.GET)
	public String hotellogin() {	
		return "login";
	}
	
	@RequestMapping(value="/reg",method=RequestMethod.GET)
	public String hotelreg() {	
		return "register";
	}
	
	//µÇÂ¼
		@RequestMapping(value="/login",method=RequestMethod.POST)
		public String login(String username,String password,String choice,Model model) {	
			
			
			if(choice.equals("user")) {
			
			User user1 = userService.getUserByusername(username);
			if (user1!=null) {
				
			String password1 = user1.getPassword();
			if(password.equals(password1)) {
				model.addAttribute("model",user1);
				return "index";
			}
			}
			}
			else {
				Manager manager1 = managerService.getManagerByusername(username);
				if(manager1!=null) {
					String password2 =  manager1.getPassword();
					if(password.equals(password2)) {
						model.addAttribute("model",manager1);
						return "index2";
					}
				}
				
				
			}
			model.addAttribute("model", 1);
			return "login";
			
		}
	
}
