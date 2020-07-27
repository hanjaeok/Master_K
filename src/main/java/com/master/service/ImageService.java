package com.master.service;

import java.util.HashMap;
import java.util.List;

public interface ImageService {

	public void imgUpload(HashMap<String, Object> hashMap);

	public List<HashMap<String, Object>> imgListSel();
}
