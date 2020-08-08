package com.master.serviceImpl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.master.dao.MemberDAO;
import com.master.dto.MemberVO;
import com.master.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO memberDAO;
	
	@Override
	public int idChk(MemberVO memberVO) {
		int result = memberDAO.idChk(memberVO);
		return result;
	}

	@Override
	public void register(MemberVO memberVO) {
		memberDAO.register(memberVO);
	}

}
