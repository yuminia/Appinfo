package cn.app.service;

import java.util.List;

import cn.app.bean.AppInfo;
import cn.app.utils.PageHelper;

/**
* @author yuminia
* @version 创建时间：2019年8月30日 上午11:25:35
* 
*/
public interface AdminService {
	/**分页 并 模糊查询 APP信息*/
	public List<AppInfo> getAppInfoLikePageHelper(PageHelper ph,AppInfo appInfo);
	
	/** 根据条件  查询总记录数 */
	public Integer getCount(AppInfo appInfo);
}
