package com.master.serviceImpl;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.master.dao.BoardDAO;
import com.master.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO boardDAO;

	@Override
	public List<HashMap<String,Object>> boardList() throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.boardList();
	}

	@Override
	public void getBoardSav(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		boardDAO.getBoardSav(map);
	}

	@Override
	public void delBoard(String bno) {
		// TODO Auto-generated method stub
		boardDAO.delBoard(bno);
	}

	@Override
	public void updBoard(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		boardDAO.updBoard(map);
	}

	@Override
	public HashMap<String, Object> getChkCol(String bno) {
		// TODO Auto-generated method stub
		return boardDAO.getChkCol(bno);
	}

	@Override
	public HashMap<String, Object> boardView(int bno) {
		// TODO Auto-generated method stub
		return boardDAO.boardView(bno);
	}

	

}
