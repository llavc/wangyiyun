package com.yc.cloudmusic.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.cloudmusic.bean.UserInfo;
import com.yc.cloudmusic.bean.JsonObject;
import com.yc.cloudmusic.mapper.IUserInfoMapper;
import com.yc.cloudmusic.service.IUserInfoService;
import com.yc.cloudmusic.util.MD5Encryption;
import com.yc.cloudmusic.util.StringUtil;

@Service("UserInfoService")
public class UserInfoServiceImpl implements IUserInfoService{
	@Autowired
	IUserInfoMapper mapper;
	
	@Override
	public UserInfo login(UserInfo u) {
		if(StringUtil.isNull(u.getUname(),u.getPwd())){
			return null;
		}
		u.setPwd(MD5Encryption.createPassword(u.getPwd()));
		return mapper.login(u);
	}

	@Override
	public int reg(UserInfo u) {
		if(StringUtil.isNull(u.getUname(),u.getPwd())){
			return 0;
		}
		u.setPwd(MD5Encryption.createPassword(u.getPwd()));
		return mapper.reg(u);
	}

	@Override
	public int update(UserInfo u) {
		return mapper.update(u);
	}
	
	@Override
	public int alertPwd(UserInfo u) {
		if(!StringUtil.isNull(u.getPwd())){
			u.setPwd(MD5Encryption.createPassword(u.getPwd()));
		}
		return mapper.alertPwd(u);
	}

	@Override
	public int delete(String usids) {
		if(StringUtil.isNull(usids)){
			return 0;
		}
		String[] usidss=usids.split(",");
		return mapper.delete(usidss);
	}

	@Override
	public List<UserInfo> findAll() {
		return mapper.findAll();
	}

	@Override
	public JsonObject find(Integer pageNo, Integer pageSize) {
		JsonObject jb=new JsonObject(pageNo, pageSize);
		return mapper.find(jb);
	}
	
}
