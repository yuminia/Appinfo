package cn.app.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.app.bean.UserBackend;
import cn.app.dao.UserBackendMapper;

/**
* @author yuminia
* @version 创建时间：2019年8月27日 下午5:10:53
* 
*/
@Service("userBackendService")
@Transactional
public class UserBackendServiceImpl implements UserBackendService{
	
	@Resource
	private UserBackendMapper userBackendMapper;

	public UserBackend loginToBackend(UserBackend userBackend) {
		return userBackendMapper.loginToBackend(userBackend);
	}

	@Override
	public Integer addUserBackend(UserBackend userBackend) {
		return userBackendMapper.addUserBackend(userBackend);
	}

	@Override
	public Integer delUserBackend(Integer id) {
		return userBackendMapper.delUserBackend(id);
	}

	@Override
	public UserBackend getUserBackendById(Integer id) {
		return userBackendMapper.getUserBackendById(id);
	}

	@Override
	public Integer updateUserBackend(UserBackend userBackend) {
		return userBackendMapper.updateUserBackend(userBackend);
	}

	@Override
	public List<UserBackend> getUserBackendList(UserBackend userBackend) {
		return userBackendMapper.getUserBackendList(userBackend);
	}

	

}
