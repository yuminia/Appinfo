package cn.app.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.app.bean.AppInfo;
import cn.app.bean.UserBackend;
import cn.app.bean.UserDev;
import cn.app.service.AdminService;
import cn.app.service.AppInfoService;
import cn.app.service.UserBackendService;
import cn.app.service.UserDevService;
import cn.app.utils.PageHelper;

/**
* @author yuminia
* @version 创建时间：2019年8月27日 下午5:38:13
* 
*/
@Controller
@RequestMapping("/app/Backend/admin")
public class AppBackendController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private AppInfoService appInfoService;
	@Autowired
	private UserDevService userDevService;
	@Autowired
	private UserBackendService userBackendService;
	
	@RequestMapping("main")
	public String  main(HttpServletRequest request){
		return "appBackend/main";
	}
	@RequestMapping("audit")
	public String audit(HttpServletRequest request,Integer id){
		request.setAttribute("AppInfo", appInfoService.getAppInfoById(id));
		return "appBackend/audit";
	}
	@RequestMapping("adminList")
	public String adminList(HttpServletRequest request,@RequestParam(value="pageIndex",required=false,defaultValue="1")String pageIndex,
			UserBackend userBackend){
		int currentPage = Integer.parseInt(pageIndex);
		PageHelper ph = new PageHelper();
		int totalCount = userBackendService.getCount(userBackend);
		
		if(totalCount != 0){
			ph.setPageSize(7);
			ph.setTotalCount(totalCount);
			if( currentPage <= 0 ){ currentPage = 1; }
			if( currentPage >= ph.getTotalPageCount() ){ currentPage = ph.getTotalPageCount(); }
		}
		ph.setCurrentPage(currentPage);
		
		List<UserBackend> adminList = userBackendService.getUserBackendList(userBackend);
		System.out.println("appInfoList--------------------------------------------" + adminList);
		request.setAttribute("adminList", adminList);
		request.setAttribute("ph", ph);
		return "appBackend/adminList";
	}
	@RequestMapping("userList")
	public String userList(HttpServletRequest request,UserDev userDev){
		request.setAttribute("userList", userDevService.getUserDevList(userDev));
		return "appBackend/userList";
	}
	@RequestMapping("appList")
	public String appList(AppInfo appInfo,@RequestParam(value="pageIndex",required=false,defaultValue="1")String pageIndex,
			HttpServletRequest request){
		int currentPage = Integer.parseInt(pageIndex);
		PageHelper ph = new PageHelper();
		int totalCount = adminService.getCount(appInfo);
		
		if(totalCount != 0){
			ph.setPageSize(7);
			ph.setTotalCount(totalCount);
			if( currentPage <= 0 ){ currentPage = 1; }
			if( currentPage >= ph.getTotalPageCount() ){ currentPage = ph.getTotalPageCount(); }
		}
		ph.setCurrentPage(currentPage);
		
		List<AppInfo> appList = adminService.getAppInfoLikePageHelper(ph,appInfo);
		System.out.println("appInfoList--------------------------------------------" + appList);
		request.setAttribute("appList", appList);
		request.setAttribute("ph", ph);
		return "appBackend/appList";
	}
}
