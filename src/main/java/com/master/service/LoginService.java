package com.master.service;

import java.util.HashMap;

import com.master.dto.MemberVO;

public interface LoginService {

	public HashMap<String, String> loginOk(HashMap<String, Object> param);

	public String loginChk(MemberVO memberVO) throws Exception;


}
