package cn.app.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.app.bean.AppInfo;
import cn.app.dao.AdminMapper;
import cn.app.utils.PageHelper;

/**
* @author yuminia
* @version 创建时间：2019年8月30日 上午11:27:47
* 
*/
@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public List<AppInfo> getAppInfoLikePageHelper(PageHelper ph, AppInfo appInfo) {
		Map<String,Object> map = new HashMap<>();
		map.put("ph", ph);
		map.put("appInfo", appInfo);
		return adminMapper.getAppInfoLikePageHelper(map);
	}

	@Override
	public Integer getCount(AppInfo appInfo) {
		
		return adminMapper.getCount(appInfo);
	}

}
