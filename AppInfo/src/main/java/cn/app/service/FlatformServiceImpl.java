package cn.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.app.bean.Flatform;
import cn.app.dao.FlatformMapper;

@Service
public class FlatformServiceImpl implements FlatformService{
	
	@Autowired
	private FlatformMapper flatformMapper;
	
	public List<Flatform> getFlatformList() {
		return flatformMapper.getFlatformList();
		
	}

}
