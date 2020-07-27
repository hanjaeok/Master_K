package com.master.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ImageDAO {
	@Inject
	private SqlSession sql;

	public void imgUpload(HashMap<String, Object> hashMap) {
		sql.insert("imageMapper.imgUpload", hashMap);
	}

	public List<HashMap<String, Object>> imgListSel() {
		// TODO Auto-generated method stub
		return sql.selectList("imageMapper.imgListSel", null);
	}
}
