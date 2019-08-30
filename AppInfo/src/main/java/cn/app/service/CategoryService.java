package cn.app.service;

import java.util.List;
import cn.app.bean.Category;

public interface CategoryService{
	
	/**根据parentId  查询所有分类*/
	public List<Category> getCategoryListByParentId(Integer parentId);
	
	
}
