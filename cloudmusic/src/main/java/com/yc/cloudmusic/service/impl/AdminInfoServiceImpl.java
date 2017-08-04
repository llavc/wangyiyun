package com.yc.cloudmusic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.cloudmusic.bean.AdminInfo;
import com.yc.cloudmusic.bean.JsonObject;
import com.yc.cloudmusic.mapper.IAdminInfoMapper;
import com.yc.cloudmusic.service.IAdminInfoService;
import com.yc.cloudmusic.util.MD5Encryption;
import com.yc.cloudmusic.util.StringUtil;

@Service("adminInfoService")
public class AdminInfoServiceImpl implements IAdminInfoService{
	@Autowired
	IAdminInfoMapper mapper;
	
	@Override
	public AdminInfo login(AdminInfo a) {
		if(StringUtil.isNull(a.getAname(),a.getPwd())){
			return null;
		}
		a.setPwd(MD5Encryption.createPassword(a.getPwd()));
		return mapper.login(a);
	}

	@Override
	public int add(AdminInfo a) {
		if(StringUtil.isNull(a.getAname(),a.getPwd())){
			return 0;
		}
		a.setPwd(MD5Encryption.createPassword(a.getPwd()));
		return mapper.add(a);
	}

	@Override
	public int update(AdminInfo a) {
		if(!StringUtil.isNull(a.getPwd())){
			a.setPwd(MD5Encryption.createPassword(a.getPwd()));
		}
		return mapper.update(a);
	}

	@Override
	public int delete(String aids) {
		if(StringUtil.isNull(aids)){
			return 0;
		}
		String[] aidss=aids.split(",");
		return mapper.delete(aidss);
	}

	@Override
	public List<AdminInfo> findAll() {
		return mapper.findAll();
	}

	@Override
	public JsonObject find(Integer pageNo, Integer pageSize) {
		JsonObject jb=new JsonObject(pageNo, pageSize);
		return mapper.find(jb);
	}

}
