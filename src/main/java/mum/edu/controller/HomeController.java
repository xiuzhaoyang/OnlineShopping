package mum.edu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mum.edu.service.MemberService;
  
@Controller
public class HomeController {

	
  	@Autowired
 	private MemberService customerService;

	@RequestMapping({"/","/welcome"})
	public String welcome(Model model) {
		
		
		return "welcome";
	}
 
}
