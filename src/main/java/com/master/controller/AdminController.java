package com.master.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	
	
	@RequestMapping(value="admin/adminPage" , method= RequestMethod.GET)
	public void adminPage(Model model) throws Exception{
		
	}

}
