package cn.app.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.app.bean.AppVersion;

@Repository("appVersionMapper")
public interface AppVersionMapper {
	
	/**根据 appId 获取版本信息 */
	List<AppVersion> getAppVersionByAppId(Integer appId);
	
	/**添加 app版本*/
	Integer addAppVersion(AppVersion appVersion);
	
	/**根据 appId 获取 最新版本信息 */
	AppVersion getLastAppVersionByAppId(Integer appId);

}
