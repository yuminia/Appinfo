package cn.app.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.app.bean.AppInfo;
import cn.app.bean.AppVersion;
import cn.app.bean.Category;
import cn.app.bean.Flatform;
import cn.app.bean.UserBackend;
import cn.app.bean.UserDev;
import cn.app.service.AdminService;
import cn.app.service.CategoryService;
import cn.app.service.FlatformService;
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
	@Autowired
	private FlatformService flatformService;
	@Autowired
	private CategoryService categoryService;
	
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
	@RequestMapping(value="appList", method=RequestMethod.POST)
	public String appList(
			@RequestParam(value="softwareName",required=false,defaultValue="")String softwareName,
			@RequestParam(value="categoryLevel1",required=false,defaultValue="")Integer categoryLevel1,
			@RequestParam(value="categoryLevel2",required=false,defaultValue="")Integer categoryLevel2,
			@RequestParam(value="categoryLevel3",required=false,defaultValue="")Integer categoryLevel3,
			@RequestParam(value="status",required=false,defaultValue="")Integer status,
			@RequestParam(value="flatformId",required=false,defaultValue="")Integer flatformId,
			@RequestParam(value="pageIndex",required=false,defaultValue="1")String pageIndex,
			HttpServletRequest request){
		AppInfo appInfo = new AppInfo();
		if(softwareName != null && softwareName != ""){
			appInfo.setSoftwareName(softwareName);
		}
		if(categoryLevel1 != null && categoryLevel1 != 0){
			appInfo.setCategoryLevel1(categoryLevel1);
		}
		if(categoryLevel2 != null && categoryLevel2 != 0){
			appInfo.setCategoryLevel2(categoryLevel2);
		}
		if(categoryLevel3 != null && categoryLevel3 != 0){
			appInfo.setCategoryLevel3(categoryLevel3);
		}
		if(status != null && status != 0){
			appInfo.setStatus(status);
		}
		if(flatformId != null && flatformId != 0){
			appInfo.setFlatformId(flatformId);
		}
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
		List<Flatform> flatformList = flatformService.getFlatformList();
		List<Category> categoryList1 = categoryService.getCategoryListByParentId(1);
		List<AppInfo> appList = adminService.getAppInfoLikePageHelper(ph,appInfo);
		List<AppVersion> appVersionList = adminService.getAppVersion();
		System.out.println(appList.size()+"adminAppInfoList查出集合为：============================》" + appList);
		System.out.println("appVersionList查出集合为：============================》" + appVersionList);
		request.setAttribute("appVersionList", appVersionList);
		request.setAttribute("categoryList1", categoryList1);
		request.setAttribute("flatformList", flatformList);
		request.setAttribute("appList", appList);
		request.setAttribute("ph", ph);
		return "appBackend/appList";
	}
	@RequestMapping(value="appList", method=RequestMethod.GET)
	public String applist(@RequestParam(value="softwareName",required=false,defaultValue="")String softwareName,
			@RequestParam(value="categoryLevel1",required=false,defaultValue="")Integer categoryLevel1,
			@RequestParam(value="categoryLevel2",required=false,defaultValue="")Integer categoryLevel2,
			@RequestParam(value="categoryLevel3",required=false,defaultValue="")Integer categoryLevel3,
			@RequestParam(value="status",required=false,defaultValue="")Integer status,
			@RequestParam(value="flatformId",required=false,defaultValue="")Integer flatformId,
			@RequestParam(value="pageIndex",required=false,defaultValue="1")String pageIndex,
			HttpServletRequest request){
		AppInfo appInfo = new AppInfo();
		if(softwareName != null && softwareName != ""){
			appInfo.setSoftwareName(softwareName);
		}
		if(categoryLevel1 != null && categoryLevel1 != 0){
			appInfo.setCategoryLevel1(categoryLevel1);
		}
		if(categoryLevel2 != null && categoryLevel2 != 0){
			appInfo.setCategoryLevel2(categoryLevel2);
		}
		if(categoryLevel3 != null && categoryLevel3 != 0){
			appInfo.setCategoryLevel3(categoryLevel3);
		}
		if(status != null && status != 0){
			appInfo.setStatus(status);
		}
		if(flatformId != null && flatformId != 0){
			appInfo.setFlatformId(flatformId);
		}
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
		List<Flatform> flatformList = flatformService.getFlatformList();
		List<Category> categoryList1 = categoryService.getCategoryListByParentId(1);
		List<AppInfo> appList = adminService.getAppInfoLikePageHelper(ph,appInfo);
		List<AppVersion> appVersionList = adminService.getAppVersion();
		System.out.println("adminAppInfoList查出集合为：============================》" + appList);
		System.out.println("appVersionList查出集合为：============================》" + appVersionList);
		request.setAttribute("appVersionList", appVersionList);
		request.setAttribute("categoryList1", categoryList1);
		request.setAttribute("flatformList", flatformList);
		request.setAttribute("appList", appList);
		request.setAttribute("ph", ph);
		return "appBackend/appList";
	}
}
