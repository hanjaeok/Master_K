package com.master.serviceImpl;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.master.dao.ImageDAO;
import com.master.service.ImageService;

@Service
public class ImageServiceImpl implements ImageService{

	@Inject
	private ImageDAO imageDAO;
	
	@Override
	public void imgUpload(HashMap<String, Object> hashMap) {
		imageDAO.imgUpload(hashMap);
	}

	@Override
	public List<HashMap<String, Object>> imgListSel() {
		// TODO Auto-generated method stub
		return imageDAO.imgListSel();
	}

}
