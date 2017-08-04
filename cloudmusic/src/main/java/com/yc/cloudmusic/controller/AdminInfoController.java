package com.yc.cloudmusic.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.cloudmusic.bean.AdminInfo;
import com.yc.cloudmusic.bean.JsonObject;
import com.yc.cloudmusic.service.IAdminInfoService;

@Controller
public class AdminInfoController {
	@Autowired
	IAdminInfoService adminInfoService;
	
	@RequestMapping("/findAdminByPage")
	@ResponseBody
	public JsonObject findAdminByPage(int page,int rows){
		return adminInfoService.find(page, rows);
	} 
	
	@RequestMapping("/addAdmin")
	@ResponseBody
	public int addAdmin(AdminInfo a){
		return adminInfoService.add(a);
	}
	
	@RequestMapping("/deleteAdmin")
	@ResponseBody
	public int deleteAdmin(String aids){
		return adminInfoService.delete(aids);
	}
	
	@RequestMapping("/updateAdmin")
	@ResponseBody
	public int updateAdmin(AdminInfo a){
		return adminInfoService.update(a);
	}
	
	@RequestMapping("/adminLogin")
	@ResponseBody
	public int adminLogin(AdminInfo a,String code,HttpSession session){
		String codes=String.valueOf(session.getAttribute("rand"));
		int result=-1;
		if(!code.equals(codes)){
			result=1;
		}else{
			AdminInfo adminInfo=adminInfoService.login(a);
			if(adminInfo!=null){
				result=3;
				session.setAttribute("currentLogin", adminInfo);
			}else{
				result=2;
			}
		}
		return result;
	}
}
