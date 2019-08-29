package cn.app.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.app.bean.Category;

@Repository("categoryMapper")
public interface CategoryMapper {
	
	/**根据parentId  查询所有分类*/
	public List<Category> getCategoryListByParentId(Integer parentId);
}
