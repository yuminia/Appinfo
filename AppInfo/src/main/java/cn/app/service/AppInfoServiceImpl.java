package cn.app.service;

import java.util.List;

import cn.app.bean.AppInfo;
import cn.app.dao.AppInfoMapper;

public class AppInfoServiceImpl implements AppInfoService {
	private AppInfoMapper appInfoMapper;

	/** 查询所有APP信息 */
	@Override
	public List<AppInfo> getAppInfoList(AppInfo appInfo) {

		return appInfoMapper.getAppInfoList(appInfo);
	}

	/** 根据ID查询APP信息 */
	@Override
	public AppInfo getAppInfoById(Integer id) {
		return appInfoMapper.getAppInfoById(id);
	}

	/** 增加APP信息 */
	@Override
	public Integer addAppInfo(AppInfo appInfo) {
		return appInfoMapper.addAppInfo(appInfo);
	}

	/** 修改APP信息 */
	@Override
	public Integer updateAppInfo(AppInfo appInfo) {
		return appInfoMapper.updateAppInfo(appInfo);
	}

	/** 根据ID 删除APP信息 */
	@Override
	public Integer deleteAppInfo(Integer id) {
		return appInfoMapper.deleteAppInfo(id);
	}

}
