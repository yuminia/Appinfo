package cn.app.service;

import java.util.List;

import cn.app.bean.UserDev;

public interface UserDevService {

	/**查询所有用户*/
	public List<UserDev> getUserDevList(UserDev UserDev);
	
	/** 添加用户 */
	public Integer addUserDev(UserDev UserDev);
	
	/** 根据登录用户名 和 密码查询用户 */
	public UserDev getUserDevByUserDevCodeAndPassword(UserDev userDev);
	
	/** 根据登录用户名 查询用户 */
	public UserDev getUserDevByUserDevCode(String devCode);
	
	/** 查询用户总录数  <br> @param UserDev 
	public Integer getCount(UserDev userDev);*/
	
	/** 分页查询用户 
	 * @param UserDevName
	public List<UserDev> getUserDevByPage(Map<String,Object> map); */
	
	/** 修改用户 */
	public Integer updateUserDev(UserDev userDev);
	
	/** 根据主键id 查询用户 */
	public UserDev getUserDevById(Integer id);
	
}
