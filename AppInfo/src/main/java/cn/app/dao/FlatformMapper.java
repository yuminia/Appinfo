package cn.app.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.app.bean.Flatform;

@Repository("flatformMapper")
public interface FlatformMapper {
	
	/**查询所有 平台*/
	public List<Flatform> getFlatformList();
	
}
