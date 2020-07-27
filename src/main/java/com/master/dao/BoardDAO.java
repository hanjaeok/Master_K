package com.master.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	public List<HashMap<String,Object>> boardList() throws Exception{
		
		return sqlSession.selectList("boardMapper.boardList");
	}

	public void getBoardSav(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		sqlSession.insert("boardMapper.getBoardSav", map);
	}

	public void delBoard(String bno) {
		// TODO Auto-generated method stub
		sqlSession.delete("boardMapper.delBoard", bno);
	}

	public void updBoard(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		sqlSession.update("boardMapper.updBoard", map);
	}

	public HashMap<String, Object> getChkCol(String bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("boardMapper.getChkCol", bno);
	}

	public HashMap<String, Object> boardView(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("boardMapper.boardView", bno);
	}
	
}
