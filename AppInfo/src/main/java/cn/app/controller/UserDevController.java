package cn.app.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.app.bean.AppInfo;
import cn.app.bean.Category;
import cn.app.bean.Flatform;
import cn.app.bean.UserDev;
import cn.app.service.AppInfoService;
import cn.app.service.CategoryService;
import cn.app.service.FlatformService;
import cn.app.service.UserDevService;
import cn.app.utils.PageHelper;

@Controller
@RequestMapping("/app/userDev")
public class UserDevController {
	@Autowired
	private UserDevService userDevService;
	@Autowired
	private AppInfoService appInfoService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private FlatformService flatformService;
	
	/** 登录成功页面 main.jsp */
	@RequestMapping(value="main",method=RequestMethod.GET)
	public String main1(@RequestParam(value="pageIndex",required=false,defaultValue="1")String pageIndex,
			HttpServletRequest request ){
		System.out.println("GET   appInfo====== null");
		UserDev userDev = (UserDev) request.getSession().getAttribute("loginUserDev");
		
		if(userDev == null){
			return "login";
		}
		int createId = userDev.getId();
		//加载flatformList
		List<Flatform> flatformList = flatformService.getFlatformList();
		
		//加载 categoryList1
		List<Category> categoryList1 = categoryService.getCategoryListByParentId(1);
		
		//加载 相关AppInfo 分页数据
		int currentPage = Integer.parseInt(pageIndex);
		PageHelper ph = new PageHelper();
		int totalCount = appInfoService.getCount(null,createId);
		
		if(totalCount != 0){
			ph.setPageSize(6);
			ph.setTotalCount(totalCount);
			if( currentPage <= 0 ){ currentPage = 1; }
			if( currentPage >= ph.getTotalPageCount() ){ currentPage = ph.getTotalPageCount(); }
		}
		ph.setCurrentPage(currentPage);
		
		List<AppInfo> appInfoList = appInfoService.getAppInfoLikePageHelper(ph,new AppInfo(),createId);
		request.setAttribute("appInfoList", appInfoList);
		request.setAttribute("categoryList1", categoryList1);
		request.setAttribute("flatformList", flatformList);
		request.setAttribute("ph", ph);
		return "userDev/main";
	}
	/** 登录成功页面 main.jsp */
	@RequestMapping(value="appInfoTable",method=RequestMethod.POST)
	public String main(
			@RequestParam(value="softwareName",required=false,defaultValue="")String softwareName,
			@RequestParam(value="categoryLevel1",required=false,defaultValue="")Integer categoryLevel1,
			@RequestParam(value="categoryLevel2",required=false,defaultValue="")Integer categoryLevel2,
			@RequestParam(value="categoryLevel3",required=false,defaultValue="")Integer categoryLevel3,
			@RequestParam(value="status",required=false,defaultValue="")Integer status,
			@RequestParam(value="flatformId",required=false,defaultValue="")Integer flatformId,
			@RequestParam(value="pageIndex",required=false,defaultValue="1")String pageIndex,
			HttpServletRequest request ){
		UserDev userDev = (UserDev) request.getSession().getAttribute("loginUserDev");
		
		if(userDev == null){
			return "login";
		}
		int createId = userDev.getId();
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
		System.out.println("POST    appInfo====== "+appInfo);
		
		//加载flatformList
		List<Flatform> flatformList = flatformService.getFlatformList();
		
		//加载 categoryList1
		List<Category> categoryList1 = categoryService.getCategoryListByParentId(1);
		
		//加载 相关AppInfo 分页数据
		int currentPage = Integer.parseInt(pageIndex);
		PageHelper ph = new PageHelper();
		int totalCount = appInfoService.getCount(appInfo,createId);
		
		if(totalCount != 0){
			ph.setPageSize(6);
			ph.setTotalCount(totalCount);
			if( currentPage <= 0 ){ currentPage = 1; }
			if( currentPage >= ph.getTotalPageCount() ){ currentPage = ph.getTotalPageCount(); }
		}
		ph.setCurrentPage(currentPage);
		
		List<AppInfo> appInfoList = appInfoService.getAppInfoLikePageHelper(ph,appInfo,createId);
		System.out.println("appInfoList--------------------------------------------" + appInfoList);
		request.setAttribute("appInfoList", appInfoList);
		request.setAttribute("categoryList1", categoryList1);
		request.setAttribute("flatformList", flatformList);
		request.setAttribute("ph", ph);
		return "userDev/AppInfoLimit";
	}
	
	@RequestMapping("userDevList")
	@ResponseBody
	public List<UserDev> userDevList(){
		return userDevService.getUserDevList(null);
	}
	
	/** 跳转 Dev 用户登录页面
	@RequestMapping("login")
	public String userDevLogin(){
		return "login";
	} */
	
	/** Dev 用户 注销 */
	@RequestMapping("userDevlogOut")
	public String userDevlogOut(UserDev userDev,HttpServletRequest request){
		request.getSession().removeAttribute("loginUserDev");
		return "index";
	}
	
	/** Dev 用户登录 提交 */
	@RequestMapping("userDevLoginSubmit")
	public String userDevLoginSubmit(UserDev userDev,HttpServletRequest request){
		UserDev dbuserDev = userDevService.getUserDevByUserDevCodeAndPassword(userDev);
		System.out.println("===========================-----userDevLoginSubmit-----=========================");
		if(dbuserDev != null){
			request.getSession().setAttribute("loginUserDev", dbuserDev);
			return "userDev/main";
		}else{
			return "index";
		}
	}
	
	/** Dev 用户注册 提交 ******************/
	@RequestMapping("userDevRegisterSubmit")
	public String userDevRegisterSubmit(UserDev userDev){
		userDev.setCreatedBy(1);
		userDev.setCreationDate(new Date());
		int res = userDevService.addUserDev(userDev);
		if(res == 1){
			return "index";
		}
		return "index";
	}
	
	/** ajax匹配 DevCode */
	@ResponseBody
	@RequestMapping("checkDevCode")
	public String checkDevCode(String devCode){
		UserDev userDev = userDevService.getUserDevByUserDevCode(devCode);
		if(userDev != null){
			return "true";
		}else{
			return "false";
		}
	}
}
