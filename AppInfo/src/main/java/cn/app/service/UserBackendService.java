package cn.app.service;

import cn.app.bean.UserBackend;

/**
* @author yuminia
* @version 创建时间：2019年8月27日 下午3:11:19
* 
*/
public interface UserBackendService {
	/**
	 * 获取app信息列表
	* @author yuminia
	* @return List<AppInfo>
	* 
	*/
	//public List<AppInfo> getAppInfoList();
	
	/**
	 * 管理者平台登录
	* @author yuminia
	* @return UserBackend
	* @param String userCode,String userPassword
	*/
	public UserBackend loginToBackend(String userCode,String userPassword);
}
