package com.master.util;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class FileDirectory {

	public List<HashMap<String, Object>> fileList() {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> File_List = new ArrayList<HashMap<String,Object>>(); 
		
		File path = new File("D:/upload/");
		File[] fileList = path.listFiles();
		 
		if(fileList.length > 0){
		    for(int i=0; i < fileList.length; i++){
		    	HashMap<String, Object> map = new HashMap<>();
		    	String TempName = fileList[i].toString();
		    	
		    	String fname = TempName.substring(TempName.lastIndexOf("\\")+1, TempName.length());
		    	System.out.println(fname);
		    	map.put("fname", fname);
		    	map.put("fsize", fileList[i].length());
		    	
		    	File_List.add(map);
		  		if (fileList[i].exists()) {
		  	      long L = fileList[i].length();
		  	    }
		    }
		   
		    System.out.println();
	    	
	    	
		}
		
		return File_List;
	}
	
	
}
