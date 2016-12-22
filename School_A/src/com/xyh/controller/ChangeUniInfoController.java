package com.xyh.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.xyh.domain.University;
import com.xyh.service.Inter.UniversityServiceInter;

@Controller
public class ChangeUniInfoController {
	
	@Resource
	private UniversityServiceInter universityService;
	
	public void setUniversityService(UniversityServiceInter universityService) {
		this.universityService = universityService;
	}
	
	@RequestMapping("changeInfo")
	public void changeInfo(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		String proID = request.getParameter("proID");
		String counID = request.getParameter("counID");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String hql = "from University where province.id=? and country.id=?";
		
		List list = this.universityService.get(hql, new Object[]{Integer.valueOf(proID),Integer.valueOf(counID)});
		JSONArray jsonArray = new JSONArray();
		for(int i=0;i < list.size();i++){
			University uni = (University) list.get(i);
			
			UniJson unijson = new UniJson();
			unijson.setUniID(uni.getId());
			unijson.setUniName(uni.getName());
			
			jsonArray.add(JSON.toJSON(unijson));
		}
		out.write(JSON.toJSONString(jsonArray));
		out.close();
	}
	
	class UniJson{
		private String uniName;
		private Integer uniID;
		
		public String getUniName() {
			return uniName;
		}
		public void setUniName(String uniName) {
			this.uniName = uniName;
		}
		public Integer getUniID() {
			return uniID;
		}
		public void setUniID(Integer uniID) {
			this.uniID = uniID;
		}
	}
	
}


