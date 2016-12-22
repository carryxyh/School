package com.xyh.controller;

import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.xyh.domain.Users;
import com.xyh.service.Inter.UserServiceInter;
import com.xyh.utils.UploadTools;

@Controller
@RequestMapping("/profile")
public class ProfileController {
	
	@Resource
	private UserServiceInter userService;
	
	@Value("#{configProperties['goPersonInfo']}")
	private String goPersonInfo;
	@Value("#{configProperties['goUpdateUi']}")
	private String goUpdateUi;
	@RequestMapping("/goPersonInfo")
	public String goPersonInfo(){
		return goPersonInfo;
	}
	
	@RequestMapping("/goUpdateUi")
	public String goUpdateUi(){
		return goUpdateUi;
	}
	
	@RequestMapping("/uploadHead")
	public String upload(HttpServletRequest request,HttpServletResponse response){
		
		Users loginuser = (Users) request.getSession().getAttribute("loginuser");
		CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
		String newHeadPhoto = "";
		
		if(commonsMultipartResolver.isMultipart(request)){
			MultipartRequest multiRequest = (MultipartRequest) request;
			Iterator<String> iter = multiRequest.getFileNames();
			
			if(iter.hasNext()){
				MultipartFile file = multiRequest.getFile(iter.next());
				newHeadPhoto = UploadTools.uploadHead(request, file, loginuser.getId()+"");
			}
		}
		loginuser.setPhoto(newHeadPhoto);
		this.userService.update(loginuser);
		return goUpdateUi;
	}

	public void setUserService(UserServiceInter userService) {
		this.userService = userService;
	}
	
}
