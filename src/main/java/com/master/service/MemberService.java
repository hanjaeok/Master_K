package com.master.service;

import javax.inject.Inject;

import com.master.dao.MemberDAO;
import com.master.dto.MemberVO;

public interface MemberService {
	
	public int idChk(MemberVO memberVO);

	public void register(MemberVO memberVO);

}
