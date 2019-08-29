package cn.app.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.app.service.AppInfoService;
import cn.app.service.UserBackendService;
import cn.app.service.UserDevService;

/**
* @author yuminia
* @version 创建时间：2019年8月27日 下午5:38:13
* 
*/
@Controller
@RequestMapping("/app/Backend/admin")
public class AppBackendController {
	@Autowired
	private AppInfoService appInfoService;
	@Autowired
	private UserDevService userDevService;
	@Autowired
	private UserBackendService userBackendService;
	
	@RequestMapping("main")
	public String main(HttpServletRequest request){
		request.setAttribute("appList", appInfoService.getAppInfoList());
		return "appBackend/main";
	}
	@RequestMapping("audit")
	public String audit(HttpServletRequest request,Integer id){
		request.setAttribute("AppInfo", appInfoService.getAppInfoById(id));
		return "appBackend/audit";
	}
	@RequestMapping("adminList")
	public String adminList(HttpServletRequest request){
		request.setAttribute("userBackendList", appInfoService.getAppInfoList());
		return "appBackend/adminList";
	}
}
