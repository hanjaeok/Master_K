package com.master.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.master.service.FileService;
import com.master.service.FileUploadService;
import com.master.util.FileDirectory;

@Controller
public class FileController {

	@Autowired
	FileUploadService fileUploadService;
	
	@Inject
	private FileDirectory fileDirectory;
	
	@Inject
	private FileService fileService;

	@RequestMapping(value = "/file/fileList", method = RequestMethod.GET)
	public String fileList(Model model) throws Exception {

		List<HashMap<String, Object>> fList = fileService.fileList();
		List<HashMap<String, Object>> File_List = fileDirectory.fileList();
		
		model.addAttribute("FLIST", fList);
		model.addAttribute("FILE_LIST", File_List);
		
		return "file/fileList";
	}

	@RequestMapping(value = "/file/multiFileUpload", method = RequestMethod.POST)
	public String multiFileUpload(Model model, MultipartHttpServletRequest mtfRequest) {
		List<HashMap<String, Object>> map = fileUploadService.multiFileUpload(mtfRequest);

		model.addAttribute("RS_FU", map);

		return "redirect:/file/fileList";
	}

	@RequestMapping("/file/fileDown")
	public ModelAndView download(@RequestParam("fname")String fname) {
		
		String fullPath = "D:\\upload\\\\"+fname;
		
		File file = new File(fullPath);
		
		return new ModelAndView("download", "downloadFile", file);
	}
	
}
