package com.yc.cloudmusic.mapper;

import java.util.List;

import com.yc.cloudmusic.bean.AdminInfo;
import com.yc.cloudmusic.bean.JsonObject;

public interface IAdminInfoMapper {
	/**
	 * 管理员登录
	 * @param a
	 * @return
	 */
	public AdminInfo login(AdminInfo a);
	
	/**
	 * 添加管理员信息
	 * @param a
	 * @return
	 */
	public int add(AdminInfo a);
	
	/**
	 * 修改管理员信息
	 * @param a
	 * @return
	 */
	public int update(AdminInfo a);
	
	/**
	 * 删除管理员信息
	 * @param aids
	 * @return
	 */
	public int delete(String[] aids);
	
	/**
	 * 查询所有管理员信息
	 * @return
	 */
	public List<AdminInfo> findAll();
	
	/**
	 * 分页查询
	 * @param jb
	 * @return
	 */
	public JsonObject find(JsonObject jb);
}
