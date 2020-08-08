package com.master.serviceImpl;

import java.sql.Connection;
import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.master.dao.LoginDAO;
import com.master.dto.MemberVO;
import com.master.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Inject
	private LoginDAO loginDAO;

	@Override
	public HashMap<String, String> loginOk(HashMap<String, Object> param) {
		// TODO Auto-generated method stub
		
		return loginDAO.loginOk(param);
	}

	@Override
	public String loginChk(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return loginDAO.loginChk(memberVO);
	}

}
