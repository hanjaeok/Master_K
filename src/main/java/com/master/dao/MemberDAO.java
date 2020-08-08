package com.master.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.master.dto.MemberVO;

@Repository
public class MemberDAO {
	
	@Inject
	private SqlSession sql;

	public int idChk(MemberVO memberVO) {
		int result = sql.selectOne("memberMapper.idChk", memberVO);
		
		System.out.println("===============================================");
		System.out.println("===============================================");
		System.out.println(result);
		System.out.println("===============================================");
		System.out.println("===============================================");
		return result;
	}

	public void register(MemberVO memberVO) {
		sql.insert("memberMapper.register", memberVO);
	}
}
