package com.master.dao;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.master.dto.MemberVO;

@Repository
public class LoginDAO {
	
	@Inject
	private SqlSession sql;

	public HashMap<String, String> loginOk(HashMap<String, Object> param) {
		// TODO Auto-generated method stub
		return sql.selectOne("loginMapper.loginOk", param);
	}

	public String loginChk(MemberVO memberVO) {
		// TODO Auto-generated method stub
		return sql.selectOne("loginMapper.loginChk", memberVO);
	}

}
