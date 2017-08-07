package com.yc.cloudmusic.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.cloudmusic.bean.UserInfo;
import com.yc.cloudmusic.bean.JsonObject;
import com.yc.cloudmusic.service.IUserInfoService;

@Controller
public class UserInfoController {
	@Autowired
	IUserInfoService UserInfoService;
	
	@RequestMapping("/findUserInfoByPage")
	@ResponseBody
	public JsonObject findUserInfoByPage(int page,int rows){
		return UserInfoService.find(page, rows);
	} 
	
	@RequestMapping("/findAll")
	@ResponseBody
	public List<UserInfo> findAll(){
		return UserInfoService.findAll();
	}
	
	@RequestMapping("/regUserInfo")
	@ResponseBody
	public int addUser(UserInfo u){
		return UserInfoService.reg(u);
	}
	
	@RequestMapping("/deleteUserInfo")
	@ResponseBody
	public int deleteUserInfo(String usids){
		return UserInfoService.delete(usids);
	}
	
	@RequestMapping("/updateUserInfo")
	@ResponseBody
	public int updateUser(UserInfo u){
		return UserInfoService.update(u);
	}
	
	@RequestMapping("/alertPwd")
	@ResponseBody
	public int alertPwd(UserInfo u){
		return UserInfoService.alertPwd(u);
	}
	
	@RequestMapping("/userLogin")
	@ResponseBody
	public int userLogin(UserInfo u,HttpSession session){
		int result=0;	
		int len1=0;
		int len2=0;
		Map<String,Object> map=new HashMap<String,Object>();
		UserInfo userInfo=UserInfoService.login(u);
		if(userInfo!=null){
			result=1;
			String focus=userInfo.getFocus();
			System.out.println(focus);
			if(focus!=null){
				String[] focuss=focus.split(",");
				len1=focuss.length;
			}
			
			String funs=userInfo.getFuns();
			if(funs!=null){
				String[] funss=funs.split(",");
				len2=funss.length;
			}
			
			map.put("userInfo", userInfo);
			map.put("focus", len1);
			map.put("funs", len2);
			session.setAttribute("currentUserLogin", map);
		}
		return result;
	}
	
	@RequestMapping("/userExit")
	@ResponseBody
	public int userExit(HttpSession session,HttpServletResponse resp){
		session.removeAttribute("currentUserLogin");
		return 1;
	}
}
