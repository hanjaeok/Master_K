package com.master.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.master.dto.MemberVO;
import com.master.service.MemberService;

@Controller
public class MemberController {
	
	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	private MemberService ms;
	
	@Inject
	private BCryptPasswordEncoder pwdEncoder;
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public void getRegister() throws Exception{
		
	}
	
	@RequestMapping(value="/idChk", method = RequestMethod.POST)
	public String idCheck(MemberVO memberVO, Model model) throws Exception{
		
		log.info("id check");
		
		int result = ms.idChk(memberVO);
		
		if(memberVO.getUsername() == "" || memberVO.getUsername() == null) {
			result = 2;
		}
		try {
			if(result == 1) {
				System.out.println("중복된 ID입니다.");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		model.addAttribute("RS", result);
		return "jsonView";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String postRegister(MemberVO memberVO, Model model) throws Exception{
		
		String inputPass = memberVO.getPassword();
		
		System.out.println("inputPass = " + inputPass);
		
		String pwd = pwdEncoder.encode(inputPass);
		
		System.out.println("pwd = " + pwdEncoder.encode(inputPass));
		
		memberVO.setPassword(pwd);
		
		ms.register(memberVO);
		
		return "jsonView";
	}
 }
