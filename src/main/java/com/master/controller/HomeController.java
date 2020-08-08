package com.master.controller;

import java.security.Principal;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.master.dto.MemberVO;
import com.master.service.LoginService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	private LoginService loginService;
	
	@Inject
	private BCryptPasswordEncoder pwdEncoder;
	//암호화 기능을 사용할수 있게 BCryptPasswordEncoder 추가
	/*@Inject 
	private BCryptPasswordEncoder pwdEncoder;*/
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void getLogin() throws Exception{
		
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String postLogin(Model model, HttpServletRequest req) throws Exception{
		
		boolean logChk = false;
		
		MemberVO memberVO = new MemberVO();
		
		String inputPass = memberVO.getPassword();
		String pwd = pwdEncoder.encode(inputPass);
		
		memberVO.setPassword(pwd);
		
		String chkPw = loginService.loginChk(memberVO);
		
		if(memberVO.getPassword() == chkPw) {
			return "home";
		}
		
		
		return "login";
		
	}
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Principal principal) throws Exception{
		
		return "home";
	}
	
	@RequestMapping(value="/tiles/header", method = RequestMethod.POST)
	public void tiles(Principal principal, Model model) throws Exception{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		System.out.println(authentication.getName());
		String user_id = principal.getName();
		
		model.addAttribute("RS", authentication);
	}
	
}
