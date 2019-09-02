package cn.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.app.bean.AppVersion;
import cn.app.dao.AppVersionMapper;

@Service("appVersionService")
@Transactional
public class AppVersionServiceImpl implements AppVersionService{
	
	@Autowired
	private AppVersionMapper appVersionMapper;

	public List<AppVersion> getAppVersionByAppId(Integer appId) {
		return appVersionMapper.getAppVersionByAppId(appId);
	}

	public Integer addAppVersion(AppVersion appVersion) {
		return appVersionMapper.addAppVersion(appVersion);
	}

	@Override
	public AppVersion getLastAppVersionByAppId(Integer appId) {
		return appVersionMapper.getLastAppVersionByAppId(appId);
	}
	
}
