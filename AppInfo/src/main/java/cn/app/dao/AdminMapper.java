package cn.app.dao;

import java.util.List;
import java.util.Map;

import cn.app.bean.AppInfo;

/**
* @author yuminia
* @version 创建时间：2019年8月30日 上午11:16:02
* 
*/
public interface AdminMapper {
	/**分页 并 模糊查询 APP信息*/
	public List<AppInfo> getAppInfoLikePageHelper(Map<String, Object> map);
	
	/** 根据条件  查询总记录数 */
	public Integer getCount(AppInfo appInfo);
}
