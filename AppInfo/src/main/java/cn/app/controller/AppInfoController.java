package cn.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.app.bean.AppInfo;
import cn.app.service.AppInfoService;

/**
 * AppInfoController
 * @author PC
 *
 */
@Controller
@RequestMapping("/app/bean/AppInfo")
public class AppInfoController {
	@Autowired
	private AppInfoService appInfoService;
	
	
	
	/** 查询所有APP信息*/
	@RequestMapping("getAppInfoList")
	@ResponseBody
	public List<AppInfo> getAppInfoList(){
		return appInfoService.getAppInfoList();
		
	}
	
	
	
	

}
