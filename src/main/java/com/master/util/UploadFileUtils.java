package com.master.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.master.service.ImageService;

@Service
public class UploadFileUtils {
	
	@Inject
	private ImageService imageService;
	
	private static final String PREFIX_URL = "D:\\eGovFrameDev-3.8.0-64bit\\workspace\\Master_K\\src\\main\\webapp\\assets\\img\\imgList\\";
	
	public List<HashMap<String, Object>> multiFileUpload(MultipartHttpServletRequest mtfRequest){
		List<HashMap<String, Object>> lmap = new ArrayList<HashMap<String, Object>>();
		
		// 현재년월 Dir만들기
		SimpleDateFormat format1 = new SimpleDateFormat("yyyyMM");
		Calendar time = Calendar.getInstance();
		
		String format_time1 = format1.format(time.getTime());
		
		System.out.println(format_time1);
		String imgDir = PREFIX_URL + format_time1 + "\\";
		HashMap<String, Object> map = new HashMap<>();
		List<MultipartFile> fileList = mtfRequest.getFiles("file");
		int i = 0;
		
		for(MultipartFile mf : fileList) {
			String originFileName = mf.getOriginalFilename();
			long fileSize = mf.getSize();
			
			map.put("ORG_FNAME", originFileName);
			map.put("IMG_SIZE", fileSize);
			map.put("IMG_DIR", imgDir);
			map.put("IMG_PT_NAME", imgDir+originFileName);
			
			lmap.add(map);
			
			System.out.println("originFilename = " + originFileName);
			System.out.println("fileSize = " + fileSize);
			System.out.println("IMG_FILE = " + PREFIX_URL + originFileName);
			String safeFile = imgDir + originFileName;
			imageService.imgUpload(lmap.get(i));
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
