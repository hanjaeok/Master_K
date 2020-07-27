package com.master.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service
public class FileUploadService {
	
	@Inject
	private FileService fileService;
	
	private static final String PREFIX_URL = "/upload/";
	
	public List<HashMap<String, Object>> multiFileUpload(MultipartHttpServletRequest mtfRequest){
		List<HashMap<String, Object>> lmap = new ArrayList<HashMap<String, Object>>();
		
		HashMap<String, Object> map = new HashMap<>();
		List<MultipartFile> fileList = mtfRequest.getFiles("file");
		int i = 0;
		
		for(MultipartFile mf : fileList) {
			String originFileName = mf.getOriginalFilename();
			long fileSize = mf.getSize();
			
			map.put("ORG_FNAME", originFileName);
			map.put("IMG_SIZE", fileSize);
			map.put("IMG_DIR", PREFIX_URL + originFileName);
			
			lmap.add(map);
			
			System.out.println("originFilename = " + originFileName);
			System.out.println("fileSize = " + fileSize);
			
			String safeFile = PREFIX_URL + originFileName;
			
			System.out.println("image_dir = " + safeFile);
			fileService.fileUpload(lmap.get(i));
			i++;
			try {
				mf.transferTo(new File(safeFile));
			} catch(IllegalStateException e) {
				e.printStackTrace();
			}catch(IOException e) {
				e.printStackTrace();
			}
		}
		
		return lmap;
	}

}
