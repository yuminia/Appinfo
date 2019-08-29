package cn.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.app.bean.Category;
import cn.app.service.CategoryService;

@Controller
@RequestMapping("/app/category")
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("getCategoryList")
	@ResponseBody
	public List<Category> getCategoryListByParentId(Integer categoryLevel1){
		List<Category> categoryList = categoryService.getCategoryListByParentId(categoryLevel1);
		return categoryList;
	}
}
