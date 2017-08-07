package com.yc.cloudmusic.mapper;

import java.util.List;

import com.yc.cloudmusic.bean.UserInfo;
import com.yc.cloudmusic.bean.JsonObject;

public interface IUserInfoMapper {
	/**
	 * 用户登录
	 * @param a
	 * @return
	 */
	public UserInfo login(UserInfo u);
	
	/**
	 * 用户注册
	 * @param a
	 * @return
	 */
	public int reg(UserInfo u);
	
	/**
	 * 修改用户信息
	 * @param a
	 * @return
	 */
	public int update(UserInfo u);
	
	/**
	 * 修改密码
	 * @param u
	 * @return
	 */
	public int alertPwd(UserInfo u);
	
	/**
	 * 删除用户信息
	 * @param aids
	 * @return
	 */
	public int delete(String[] usids);
	
	/**
	 * 查询所有用户信息
	 * @return
	 */
	public List<UserInfo> findAll();
	
	/**
	 * 分页查询
	 * @param jb
	 * @return
	 */
	public JsonObject find(JsonObject jb);
}
