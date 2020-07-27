package com.master.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.master.service.BoardService;

@Controller
public class BoardController {

	@Inject
	private BoardService boardService;
	
	@RequestMapping(value = "/table/boardList", method= RequestMethod.GET)
	public String boardList(Model model) throws Exception{
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		list = boardService.boardList(); 
		
		model.addAttribute("list", list);
		
		return "table/boardList";
	}
	
	@RequestMapping(value="/table/boardRegister", method=RequestMethod.GET)
	public void boardRegister() throws Exception{
		
	}
	
	@RequestMapping(value="/table/boardRegister", method=RequestMethod.POST)
	public String boardSave(Model model, HttpServletRequest req) throws Exception{
		
		String title = req.getParameter("TITLE");
		String content = req.getParameter("CONTENT");
		String writer = req.getParameter("WRITER");
		HashMap<String,Object> map = new HashMap<>();
		
		map.put("TITLE", title);
		map.put("CONTENT", content);
		map.put("WRITER", writer);
		boardService.getBoardSav(map);
		model.addAttribute("BD_ISRS", map);
		
		return "jsonView";
	}
	
	@RequestMapping(value="/table/delBoard", method=RequestMethod.POST)
	public String delBoard(Model model, HttpServletRequest req) throws Exception{
		
		String bno = req.getParameter("bno");
		
		boardService.delBoard(bno);
		model.addAttribute("DEL_BOARD", bno);
		
		return "jsonView";
	}
	
	@RequestMapping(value="/table/updateBoard", method=RequestMethod.POST)
	public String updateBoard(Model model, HttpServletRequest req) throws Exception{
		
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("U_CONTENT", req.getParameter("UPD_CONTENT"));
		map.put("U_BNO", req.getParameter("UPD_BNO"));
		
		boardService.updBoard(map);
		
		model.addAttribute("UP_BL", map);
		
		return "jsonView";
	}
	
	@RequestMapping(value="/table/getChkCol", method=RequestMethod.POST)
	public String getChkCol(Model model, @RequestParam("arTst[]") String[] arrTst) throws Exception{
		HashMap<String, Object> map = new HashMap<>();
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		for(int i = 0 ; i < arrTst.length ; i++) {
			System.out.println(arrTst[i]);
			map = boardService.getChkCol(arrTst[i]);
			
			list.add(map);
		}
		System.out.println(list);
		model.addAttribute("RS_COL", list);
		
		return "jsonView";
	}
	
	@RequestMapping(value="/table/boardView", method=RequestMethod.GET)
	public String boardView(Model model, @RequestParam(value="bno", required=false) int bno)  throws Exception{
		HashMap<String, Object> map= boardService.boardView(bno);
		
		model.addAttribute("RS_BV", map);
		
		return "table/boardView";
	}
	
	@RequestMapping(value="/table/boardModify", method=RequestMethod.POST)
	public String boardModify(Model model, @RequestParam HashMap<String,Object> param) throws Exception{
		
		boardService.updBoard(param);
		
		return "jsonView";
	}
}
