package com.projectfw.infra.common.util;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.projectfw.infra.modules.member.Member;

public class UtilUpload {

	public static void upload (MultipartFile multipartFile, String className, Member dto) throws Exception{
		String fileName = multipartFile.getOriginalFilename();
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = className;
		String nowString = UtilDateTime.nowString();
//		String pathDate 
//		String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule
		
	
	}
	
	public static void createPath (String path) {
		File uploadPath = new File(path);
		
		if(!uploadPath.exists()) {
			uploadPath.mkdir();
		} else {
			// by pass
		}
	}

}
