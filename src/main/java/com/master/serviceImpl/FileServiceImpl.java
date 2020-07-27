package com.master.serviceImpl;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.master.dao.FileDAO;
import com.master.dto.FileVO;
import com.master.service.FileService;

@Service
public class FileServiceImpl implements FileService{
	
	@Inject
	private FileDAO fileDAO;

	@Override
	public void fileUpload(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		fileDAO.fileUpload(map);
	}

	@Override
	public List<HashMap<String, Object>> fileList() {
		// TODO Auto-generated method stub
		return fileDAO.fileList();
	}

	@Override
	public HashMap<String, Object> getFileInfo(String FNO) {
		// TODO Auto-generated method stub
		return fileDAO.getFileInfo(FNO);
	}

}
