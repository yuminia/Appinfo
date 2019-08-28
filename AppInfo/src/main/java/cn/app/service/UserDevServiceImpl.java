package cn.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.app.bean.UserDev;
import cn.app.dao.UserDevMapper;
@Service("userDevService")
public class UserDevServiceImpl implements UserDevService{
	@Autowired
	private UserDevMapper userDevMapper;
	
	public List<UserDev> getUserDevList(UserDev UserDev) {
		return userDevMapper.getUserDevList(UserDev);
	}

	public Integer addUserDev(UserDev UserDev) {
		return userDevMapper.addUserDev(UserDev);
	}

	public UserDev getUserDevByUserDevCodeAndPassword(UserDev userDev) {
		return userDevMapper.getUserDevByUserDevCodeAndPassword(userDev);
	}

	public UserDev getUserDevByUserDevCode(String devCode) {
		return userDevMapper.getUserDevByUserDevCode(devCode);
	}

	public Integer updateUserDev(UserDev userDev) {
		return userDevMapper.updateUserDev(userDev);
	}

	public UserDev getUserDevById(Integer id) {
		return userDevMapper.getUserDevById(id);
	}

}
