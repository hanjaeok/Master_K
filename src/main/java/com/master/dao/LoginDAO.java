package com.master.dao;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAO {
	
	@Inject
	private SqlSession sql;

	public HashMap<String, String> loginOk(HashMap<String, Object> param) {
		// TODO Auto-generated method stub
		return sql.selectOne("loginMapper.loginOk", param);
	}

}
