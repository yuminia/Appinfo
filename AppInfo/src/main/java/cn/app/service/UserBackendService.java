package cn.app.service;

import java.util.List;

import cn.app.bean.UserBackend;
import cn.app.utils.PageHelper;

/**
* @author yuminia
* @version 创建时间：2019年8月27日 下午3:11:19
* 
*/
public interface UserBackendService {
	
	/**
	 * 管理者平台登录
	* @author yuminia
	* @return UserBackend
	* @param UserBackend userCode
	*/
	public UserBackend loginToBackend(UserBackend userBackend);
	
	/**
	 * 注册管理者用户
	* @author yuminia
	* @return Integer
	* @param UserBackend userCode
	*/
	public Integer addUserBackend(UserBackend userBackend);
	/**
	 * 删除管理者用户
	* @author yuminia
	* @return Integer
	* @param Integer id
	*/
	public Integer delUserBackend(Integer id);
	
	/**
	 * 根据主键 id 获取管理者用户信息
	* @author yuminia
	* @return UserBackend
	* @param Integer id
	*/
	public UserBackend getUserBackendById(Integer id);
	
	/**
	 * 更改管理者用户信息
	* @author yuminia
	* @return Integer
	* @param UserBackend userBackend
	*/
	public Integer updateUserBackend(UserBackend userBackend);
	
	/**
	 * 获取管理者用户列表
	* @author yuminia
	* @return List<UserBackend>
	* @param UserBackend userBackend
	*/
	public List<UserBackend> getUserBackendList(UserBackend userBackend);

	/**
	 * 查询条数
	* @author yuminia
	* @return Integer
	* @param UserBackend userBackend
	*/
	public Integer getCount(UserBackend userBackend) ;
	
	/**
	 * 分页
	* @author yuminia
	* @return List<UserBackend>
	* @param PageHelper ph,UserBackend userBackend
	*/
	public List<UserBackend> getUserBackendOfPageHelper(PageHelper ph,UserBackend userBackend);
}
