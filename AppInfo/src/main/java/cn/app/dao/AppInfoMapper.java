package cn.app.dao;

import java.util.List;

import cn.app.bean.AppInfo;

public interface AppInfoMapper {
	
	/** 查询所有APP信息*/
	public List<AppInfo> getAppInfoList(AppInfo appInfo);
	
	/**根据ID查询APP信息*/	
	public AppInfo getAppInfoById(Integer id);
	
	
	/** 增加APP信息 */
	public Integer addAppInfo(AppInfo appInfo);
	
	/** 修改APP信息*/
	public Integer updateAppInfo(AppInfo appInfo);
	
	/**根据ID 删除APP信息*/
	public Integer deleteAppInfo(Integer id);

}
