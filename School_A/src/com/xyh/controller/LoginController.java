package com.xyh.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xyh.domain.Users;
import com.xyh.form.beans.User;
import com.xyh.service.Inter.UserServiceInter;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Resource
	private UserServiceInter userService;
	
	@Value("#{configProperties['checkOk']}")
	private String checkOk;
	@Value("#{configProperties['checkFail']}")
	private String checkFail;
	@Value("#{configProperties['logOutOk']}")
	private String logOutOk;
	@Value("#{configProperties['goLoginUi']}")
	private String goLoginUi;
	
	@RequestMapping("/checkLog")
	public String checkLogin(HttpServletRequest request,User formUser){
		
		Users user = new Users();
		user.setEmail(formUser.getEmail());
		user.setPwd(formUser.getPassword());
		
		user = this.userService.check(user);
		if(user != null){
			request.getSession().setAttribute("loginuser", user);
			return checkOk;
		}else{
			return checkFail;
		}
	}
	
	@RequestMapping("/goLoginUi")
	public String goLoginUi(){
		return goLoginUi;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		return logOutOk;
	}

	public void setUserService(UserServiceInter userService) {
		this.userService = userService;
	}
	
}
