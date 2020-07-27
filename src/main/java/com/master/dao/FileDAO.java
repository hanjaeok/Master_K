package com.master.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.master.dto.FileVO;

@Repository
public class FileDAO {
	
	@Inject
	private SqlSession sql;
	
	public void fileUpload(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		sql.insert("fileMapper.fileUpload", map);
	}

	public List<HashMap<String, Object>> fileList() {
		// TODO Auto-generated method stub
		return sql.selectList("fileMapper.fileList", null);
	}

	public HashMap<String, Object> getFileInfo(String FNO) {
		// TODO Auto-generated method stub
		return sql.selectOne("fileMapper.getFileInfo", FNO);
	}

}
