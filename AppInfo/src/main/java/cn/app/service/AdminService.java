package cn.app.service;

import java.util.List;

import cn.app.bean.AppInfo;
import cn.app.bean.AppVersion;
import cn.app.utils.PageHelper;

/**
* @author yuminia
* @version 创建时间：2019年8月30日 上午11:25:35
* 
*/
public interface AdminService {
	
	/**
	 * 审核
	* @author yuminia
	* @return Integer
	* @param AppInfo appInfo
	*/
	public Integer appInfoAudit(AppInfo appInfo);
	
	/**
	 * 获得版本信息列表
	* @author yuminia
	* @return List<AppVersion>
	*/
	public List<AppVersion> getAppVersion();
	
	/**
	 * 根据appinfo的版本id获得版本信息
	* @author yuminia
	* @return AppVersion
	* @param versionId
	*/
	public AppVersion getAppVersionById(Integer id);
	
	/**根据ID查询APP信息*/	
	public AppInfo getAppInfoById(Integer id);
	
	/**分页 并 模糊查询 APP信息*/
	public List<AppInfo> getAppInfoLikePageHelper(PageHelper ph,AppInfo appInfo);
	
	/** 根据条件  查询总记录数 */
	public Integer getCount(AppInfo appInfo);
}
