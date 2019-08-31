package cn.app.dao;

import java.util.List;
import java.util.Map;

import cn.app.bean.AppInfo;

public interface AppInfoMapper {
	
	/** 查询所有APP信息*/
	public List<AppInfo> getAppInfoList();
	
	/**根据ID查询APP信息*/	
	public AppInfo getAppInfoById(Integer id);
	
	
	/** 增加APP信息 */
	public Integer addAppInfo(AppInfo appInfo);
	
	/** 修改APP信息*/
	public Integer updateAppInfo(AppInfo appInfo);
	
	/**根据ID 删除APP信息*/
	public Integer deleteAppInfo(Integer id);
	
	/**分页 并 模糊查询 APP信息*/
	public List<AppInfo> getAppInfoLikePageHelper(Map<String, Object> map);
	
	/** 根据条件  查询总记录数 
	 * @param createId */
	public Integer getCount(Map<String, Object> map);
	
	/**根据APKName 查询APP信息*/
	public AppInfo getAppInfoByAPKName(String APKName);

}
