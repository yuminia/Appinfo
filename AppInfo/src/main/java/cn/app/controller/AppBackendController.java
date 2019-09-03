package cn.app.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.app.bean.AppInfo;
import cn.app.bean.AppVersion;
import cn.app.bean.UserBackend;
import cn.app.bean.UserDev;
import cn.app.service.AdminService;
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
	private UserDevService userDevService;
	@Autowired
	private UserBackendService userBackendService;
	
	//管理员主页
	@RequestMapping("main")
	public String  main(HttpServletRequest request){
		return "appBackend/main";
	}
	
	//审核页
	@RequestMapping("audit")
	public String audit(HttpServletRequest request,Integer id){
		AppInfo appInfo = adminService.getAppInfoById(id);
		AppVersion appVersion = adminService.getAppVersionById(id);
		System.out.println("获取到app：============================》"+appInfo);
		System.out.println("获取到app版本信息：============================》"+appVersion);
		request.setAttribute("AppInfo", appInfo);
		request.setAttribute("AppVersion", appVersion);
		return "appBackend/audit";
	}
	
	@RequestMapping("doAudit")
	public String doAudit(HttpServletRequest request,Integer id,Integer status,Integer publishStatus){
		AppInfo appInfo = adminService.getAppInfoById(id);
		AppVersion appVersion = adminService.getAppVersionById(appInfo.getVersionId());
		System.out.println("获取到app：============================》"+appInfo+
				"/t 状态更改："+status);
		System.out.println("获取到appVersion：============================》"+appVersion+
				"/t 状态更改："+publishStatus);
		appInfo.setStatus(status);
		if (publishStatus==null) {
			return "redirect:appList";
		}
		int result=adminService.appInfoAudit(appInfo);
		int vresult = adminService.vesionAudit(appVersion);
		request.setAttribute("result", result);
		System.out.println("更改条数：============================》"+result);
		System.out.println("更改条数：============================》"+vresult);
		return "redirect:appList";
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
		System.out.println("appInfoList============================》" + adminList);
		request.setAttribute("adminList", adminList);
		request.setAttribute("ph", ph);
		return "appBackend/adminList";
	}
	@RequestMapping("userList")
	public String userList(HttpServletRequest request,UserDev userDev){
		request.setAttribute("userList", userDevService.getUserDevList(userDev));
		return "appBackend/userList";
	}
	//
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
		List<AppVersion> appVersionList = adminService.getAppVersion();
		System.out.println("adminAppInfoList查出集合为：============================》" + appList);
		System.out.println("appVersionList查出集合为：============================》" + appVersionList);
		request.setAttribute("appVersionList", appVersionList);
		request.setAttribute("appList", appList);
		request.setAttribute("ph", ph);
		return "appBackend/appList";
	}
}
