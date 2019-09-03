package cn.app.service;

import java.util.List;

import cn.app.bean.AppVersion;

public interface AppVersionService {
	/**根据 appId 获取版本信息 */
	List<AppVersion> getAppVersionByAppId(Integer appId);
	
	/**添加 app版本*/
	Integer addAppVersion(AppVersion appVersion);
	
	/**根据 appId 获取 最新版本信息 */
	AppVersion getLastAppVersionByAppId(Integer appId);
	
	
	
}
