package com.master.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.master.dto.FileVO;

public interface FileService {

	public void fileUpload(HashMap<String, Object> map);

	public List<HashMap<String, Object>> fileList();

	public HashMap<String, Object> getFileInfo(String FNO);

}
