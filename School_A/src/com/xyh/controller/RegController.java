package com.xyh.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xyh.domain.University;
import com.xyh.domain.UserUniversity;
import com.xyh.domain.Users;
import com.xyh.form.beans.User;
import com.xyh.service.Inter.CountryServiceInter;
import com.xyh.service.Inter.ProvinceServiceInter;
import com.xyh.service.Inter.UniversityServiceInter;
import com.xyh.service.Inter.UserServiceInter;
import com.xyh.service.Inter.UserUniversityInter;

@Controller
public class RegController {
	
	@Value("#{configProperties['reg_to_home']}")
	private String reg_to_home;
	@Value("#{configProperties['go_to_Reg']}")
	private String go_to_Reg;
	
	@Resource
	private CountryServiceInter countryService;
	@Resource
	private ProvinceServiceInter provinceService;
	@Resource
	private UniversityServiceInter universityService;
	@Resource
	private UserServiceInter userService;
	@Resource
	private UserUniversityInter userUniversityService;

	@RequestMapping("/goReg")
	public String goReg(HttpServletRequest request){
		request.setAttribute("countrylist", this.countryService.get("from Country", null));
		request.setAttribute("provincelist", this.provinceService.get("from Province where country.id = ?", new Object[]{new Integer(1)}));
		request.setAttribute("universitylist",this.universityService.get("from University where province.id = ? and country.id = ?", new Object[]{new Integer(1),new Integer(1)}));
		return go_to_Reg;
	}
	
	@RequestMapping(value="/register")
	public String Reg(HttpServletRequest request,HttpServletResponse response,User user){
		
		Users users = new Users();
		users.setLoginDate(new Date());
		users.setName(user.getUserName());
		users.setPwd(user.getPassword());
		users.setSex(user.getSex());
		users.setRegisterDate(new Date());
		users.setEmail(user.getEmail());
		
		//先得到该用户的大学对象
		University university =  (University) this.universityService.findById(University.class,Integer.parseInt(user.getUniversityId()));
		
		//创建该用户的用户大学表
		UserUniversity userUniForm = new UserUniversity();
		userUniForm.setUsers(users);
		userUniForm.setUniversity(university);
		userUniForm.setUserType(user.getUserType());
		
		//保存用户
		this.userService.save(users);
		this.userUniversityService.save(userUniForm );
		
		request.getSession().setAttribute("loginuser", users);
		
		return reg_to_home;
	}
	
	public void setProvinceService(ProvinceServiceInter provinceService) {
		this.provinceService = provinceService;
	}

	public void setCountryService(CountryServiceInter countryService) {
		this.countryService = countryService;
	}

	public void setUniversityService(UniversityServiceInter universityService) {
		this.universityService = universityService;
	}

	public void setUserService(UserServiceInter userService) {
		this.userService = userService;
	}

	public void setUserUniversityService(UserUniversityInter userUniversityService) {
		this.userUniversityService = userUniversityService;
	}
	
}
