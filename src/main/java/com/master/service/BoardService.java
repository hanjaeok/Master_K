package com.master.service;

import java.util.HashMap;
import java.util.List;

public interface BoardService {

	public List<HashMap<String,Object>> boardList() throws Exception;

	public void getBoardSav(HashMap<String, Object> map);

	public void delBoard(String bno);

	public void updBoard(HashMap<String, Object> map);

	public HashMap<String, Object> getChkCol(String bno);

	public HashMap<String, Object> boardView(int bno);

}
