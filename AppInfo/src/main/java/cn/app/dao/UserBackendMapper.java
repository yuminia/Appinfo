package cn.app.dao;


import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cn.app.bean.UserBackend;

/**
* @author yuminia
* @version 创建时间：2019年8月27日 下午4:11:08
* 
*/
@Repository("userBackendMapper")
@Transactional
public interface UserBackendMapper {
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
	public UserBackend loginToBackend(@Param("userCode")String userCode,@Param("userPassword")String userPassword);
}
