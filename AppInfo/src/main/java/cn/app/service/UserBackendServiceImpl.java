package cn.app.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.app.bean.UserBackend;

/**
* @author yuminia
* @version 创建时间：2019年8月27日 下午5:10:53
* 
*/
@Service("userBackendService")
@Transactional
public class UserBackendServiceImpl implements UserBackendService{
	
	@Resource
	private UserBackendService userBackendService;

	public UserBackend loginToBackend(String userCode,String userPassword) {
		
		return userBackendService.loginToBackend(userCode, userPassword);
	}
	

}
