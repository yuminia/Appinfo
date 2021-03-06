package cn.app.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.app.bean.AppInfo;
import cn.app.dao.AppInfoMapper;
import cn.app.utils.PageHelper;
@Service("appInfoService")
public class AppInfoServiceImpl implements AppInfoService {
	@Autowired
	private AppInfoMapper appInfoMapper;

	/** 查询所有APP信息 */
	public List<AppInfo> getAppInfoList() {

		return appInfoMapper.getAppInfoList();
	}

	/** 根据ID查询APP信息 */
	public AppInfo getAppInfoById(Integer id) {
		return appInfoMapper.getAppInfoById(id);
	}

	/** 增加APP信息 */
	public Integer addAppInfo(AppInfo appInfo) {
		return appInfoMapper.addAppInfo(appInfo);
	}

	/** 修改APP信息 */
	public Integer updateAppInfo(AppInfo appInfo) {
		return appInfoMapper.updateAppInfo(appInfo);
	}

	/** 根据ID 删除APP信息 */
	public Integer deleteAppInfo(Integer id) {
		return appInfoMapper.deleteAppInfo(id);
	}
	
	public List<AppInfo> getAppInfoLikePageHelper(PageHelper ph, AppInfo appInfo ,Integer createId) {
		Map<String,Object> map = new HashMap<>();
		map.put("ph", ph);
		map.put("appInfo", appInfo);
		map.put("createId", createId);
		return appInfoMapper.getAppInfoLikePageHelper(map);
	}

	public Integer getCount(AppInfo appInfo,int createId) {
		Map<String,Object> map = new HashMap<>();
		map.put("appInfo", appInfo);
		map.put("createId", createId);
		return appInfoMapper.getCount(map);
	}

	public AppInfo getAppInfoByAPKName(String APKName) {
		return appInfoMapper.getAppInfoByAPKName(APKName);
	}

	public int updateAppInfoStatusOn(Integer id) {
		return appInfoMapper.updateAppInfoStatusOn(id);
	}

	@Override
	public int updateAppInfoStatusDown(Integer id) {
		return appInfoMapper.updateAppInfoStatusDown(id);
	}

}
