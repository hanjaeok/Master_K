package com.master.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.master.dto.ImageVO;
import com.master.service.ImageService;
import com.master.util.UploadFileUtils;

@Controller
public class ImageController {
	
	@Inject
	UploadFileUtils uploadFileUtils;
	
	@Inject
	ImageService imageService;
	
	@RequestMapping(value="/img/imgList", method=RequestMethod.GET)
	public String imgList(Model model) throws Exception{
		
		List<HashMap<String, Object>> imgList = new ArrayList<HashMap<String,Object>>();
		imgList = imageService.imgListSel();
		
		System.out.println("imgList = " + imgList);
		
		model.addAttribute("imgList", imgList);
		
		

		return "img/imgList";
	}
	
	@RequestMapping(value="/img/imgUpload", method=RequestMethod.POST)
	public String imgUpload(ImageVO imageVO, Model model, MultipartHttpServletRequest mtfRequest) throws Exception{
		List<HashMap<String, Object>> map = uploadFileUtils.multiFileUpload(mtfRequest);
		
		model.addAttribute("RS_IMG", map);
		return "redirect:imgList";
	}
}
