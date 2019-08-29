package cn.app.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.app.bean.AppInfo;

/**
* @author yuminia
* @version 创建时间：2019年8月27日 下午5:39:13
* 
*/
@Repository("appBackendMapper")
@Transactional
public interface AppBackendMapper {
	
	/**
	* @author yuminia
	* @return AppInfo
	* @param Integer id
	*/
	public AppInfo getAppInfoById(Integer id);
	
	public Integer updateAppInfo(AppInfo appInfo);
	
	public List<AppInfo> getAppInfoList();

}
