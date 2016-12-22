package com.xyh.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class UploadTools {
	
	public static String uploadHead(HttpServletRequest request,MultipartFile photo,String id){
		
		String newFileName = "";
		
		String filePath = request.getSession().getServletContext().getRealPath("/");
		InputStream is = null;
		OutputStream bos = null;
		try {
			is = photo.getInputStream();
			String oldPhotoName = photo.getOriginalFilename();
			newFileName = id + oldPhotoName.substring(oldPhotoName.indexOf("."), oldPhotoName.length());
			String newFullNewPath = filePath + "images/" + id + "/head/";
			
			File directory = new File(newFullNewPath);
			if(!directory.isDirectory()){
				directory.mkdirs();
			}
			
			bos = new FileOutputStream(newFullNewPath + newFileName);
			int hasRead = 0;
			byte[] buffer = new byte[8192];
			while((hasRead = is.read(buffer,0,8192)) != -1){
				bos.write(buffer,0,hasRead);
			}
		
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				is.close();
				bos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return newFileName;
	}
	
	public static String uploadPhoto(HttpServletRequest request,MultipartFile photo,String uid,String albumId){
		
		String newFileName = "";
		String filePath = request.getSession().getServletContext().getRealPath("/");
		InputStream is = null;
		OutputStream bos = null;
		
		try {
			is = photo.getInputStream();
			String oldPhotoName = photo.getOriginalFilename();
			String newFullNewPath = filePath + "images/" + uid + "/album/" + albumId + "/";
			newFileName = UUID.randomUUID().toString() + oldPhotoName.substring(oldPhotoName.indexOf("."), oldPhotoName.length());
			
			File directory = new File(newFullNewPath);
			if(!directory.isDirectory()){
				directory.mkdirs();
			}
			
			bos = new FileOutputStream(newFullNewPath + newFileName);
			int hasRead = 0;
			byte[] buffer = new byte[8192];
			while((hasRead = is.read(buffer,0,8192)) != -1){
				bos.write(buffer,0,hasRead);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				bos.close();
				is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return newFileName;
	}
}
