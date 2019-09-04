package cn.app.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import cn.app.bean.AppInfo;
import cn.app.bean.AppVersion;
import cn.app.bean.Category;
import cn.app.bean.Flatform;
import cn.app.bean.UserDev;
import cn.app.service.AppInfoService;
import cn.app.service.AppVersionService;
import cn.app.service.CategoryService;
import cn.app.service.FlatformService;
import cn.app.utils.PageHelper;

/**
 * AppInfoController
 * @author PC
 */
@Controller
@RequestMapping("/app/appInfo")
public class AppInfoController {
	@Autowired
	private AppInfoService appInfoService;
	@Autowired
	private FlatformService flatformService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private AppVersionService appVersionService;
	
	
	/** ajax 匹配 checkAPKName */
	@ResponseBody
	@RequestMapping("checkAPKName")
	public String checkAPKName(String APKName){
		AppInfo appInfo = appInfoService.getAppInfoByAPKName(APKName);
		if(appInfo != null){
			return "true";
		}else{
			return "false";
		}
	}
	
	/**updateAppInfoSubmit*/
	@RequestMapping(value="updateAppInfoSubmit",method=RequestMethod.POST)
	@ResponseBody
	public String updateAppInfoSubmit(AppInfo appInfo , HttpServletRequest request,
			@RequestParam(value="file_logoPicPath",required=false)MultipartFile multipartFile){
		System.out.println("updateAppInfoSubmit--appInfo : " + appInfo);
		
		String errorInfo = "";//错误信息
		String fileName = "";
		boolean isResult = true;//是否出错
		if( !multipartFile.isEmpty() ){
			
			String oldName = multipartFile.getOriginalFilename();
			//获取原文件后缀
			String oldSuffix = FilenameUtils.getExtension(oldName);
			int fileSize = 52428;
			if( multipartFile.getSize() > fileSize ){
				isResult = false;
				errorInfo = "文件大小不得超过50KB";
			}else if( oldSuffix.equalsIgnoreCase("jpg") 
					|| oldSuffix.equalsIgnoreCase("png") 
					|| oldSuffix.equalsIgnoreCase("jpeg") 
					|| oldSuffix.equalsIgnoreCase("pneg") ){
				fileName = System.currentTimeMillis() + RandomUtils.nextInt(100000) 
				+ "_logoPic.jpg";
				File targetFile = new File("E:/upload/",fileName);
				if(!targetFile.exists()){
					targetFile.mkdirs();
				}
				try{
					multipartFile.transferTo(targetFile);//写入文件
				}catch (IOException e) {
					e.printStackTrace();
					errorInfo = "文件上传失败";
					isResult = false;
				}
			}else{
				isResult = false;
				errorInfo = "文件格式错误!必须以jpg、png、jpeg、pneg结尾";
			}
		}else{//没有上传图片 则 直接修改
			UserDev loginUser = (UserDev) request.getSession().getAttribute("loginUserDev");
			appInfo.setModifyBy(loginUser.getId());
			appInfo.setModifyDate(new Date());
			Integer result = appInfoService.updateAppInfo(appInfo);
			if( result == 1 ){
				return "true";
			}else{
				return errorInfo;
			}
		}
		if( isResult ){
			UserDev loginUser = (UserDev) request.getSession().getAttribute("loginUserDev");
			appInfo.setCreatedBy(loginUser.getId());
			appInfo.setCreationDate(new Date());
			appInfo.setLogoPicPath(fileName);
			
			Integer result = appInfoService.updateAppInfo(appInfo);
			if( result == 1 ){
				return "true";
			}else{
				return errorInfo;
			}
		}else{
			return errorInfo;
		}
	}
		
	/**addAppInfoSubmit*/
	@RequestMapping(value="addAppInfoSubmit",method=RequestMethod.POST)
	@ResponseBody
	public String addAppInfoSubmit(AppInfo appInfo , HttpServletRequest request,
			@RequestParam(value="file_logoPicPath",required=false)MultipartFile multipartFile){
		System.out.println("addAppInfoSubmit--appInfo : " + appInfo);
		
		String errorInfo = "";//错误信息
		String fileName = "";
		boolean isResult = true;//是否出错
		if( !multipartFile.isEmpty() ){
			String savePath = request.getSession().getServletContext()
					.getRealPath("static"+File.separator+"uploadfiles");
			File saveFile = new File(savePath);
			if(!saveFile.exists()){
				saveFile.mkdirs();
			}
			System.out.println("文件保存路径: " + savePath);
			String oldName = multipartFile.getOriginalFilename();
			//获取原文件后缀
			String oldSuffix = FilenameUtils.getExtension(oldName);
			int fileSize = 52428;
			if( multipartFile.getSize() > fileSize ){
				isResult = false;
				errorInfo = "文件大小不得超过50KB";
			}else if( oldSuffix.equalsIgnoreCase("jpg") 
					|| oldSuffix.equalsIgnoreCase("png") 
					|| oldSuffix.equalsIgnoreCase("jpeg") 
					|| oldSuffix.equalsIgnoreCase("pneg") ){
				fileName = System.currentTimeMillis() + RandomUtils.nextInt(100000) 
									+ "_logoPic.jpg";
//				File targetFile = new File(saveFile, fileName);
				File targetFile = new File("E:/upload/",fileName);
				if(!targetFile.exists()){
					targetFile.mkdirs();
				}
				try{
					multipartFile.transferTo(targetFile);//写入文件
				}catch (IOException e) {
					e.printStackTrace();
					errorInfo = "文件上传失败";
					isResult = false;
				}
			}else{
				isResult = false;
				errorInfo = "文件格式错误!必须以jpg、png、jpeg、pneg结尾";
			}
			
		}
		
		if( isResult ){
			UserDev loginUser = (UserDev) request.getSession().getAttribute("loginUserDev");
			appInfo.setCreatedBy(loginUser.getId());
			appInfo.setCreationDate(new Date());
			appInfo.setLogoPicPath(fileName);
			Integer result = appInfoService.addAppInfo(appInfo);
			if( result == 1 ){
				return "true";
			}else{
				return errorInfo;
			}
		}else{
//			request.setAttribute("errorInfo", errorInfo);
			return errorInfo;
		}
	}
	
	/**deleteAppInfo page*/
	@RequestMapping(value="deleteAppInfo",method=RequestMethod.GET)
	public String deleteAppInfo(HttpServletRequest request ,Integer id){
		appInfoService.deleteAppInfo(id);
		return "forward:/app/appInfo/AppList";
	}
	
	/**detailAppInfo page*/
	@RequestMapping(value="detailAppInfo",method=RequestMethod.GET)
	public String detailAppInfo(HttpServletRequest request ,Integer id){
		//历史版本集合
		List<AppVersion> appVersionList = appVersionService.getAppVersionByAppId(id);
		
		//加载appInfo 
		AppInfo appInfo = appInfoService.getAppInfoById(id);
		System.out.println("appInfo---getAppInfoById : "+appInfo);
		//加载flatformList
		List<Flatform> flatformList = flatformService.getFlatformList();
		//加载 categoryList1
		List<Category> categoryList1 = categoryService.getCategoryListByParentId(1);
		//加载 categoryList2 
		Integer categoryLevel1 = appInfo.getCategoryLevel1();//获取回显appinfo 的一级分类id
		List<Category> categoryList2 = categoryService.getCategoryListByParentId(categoryLevel1);//获取该一级分类下的所有二级分类
		//加载 categoryList3
		Integer categoryLevel2 = appInfo.getCategoryLevel2();//获取回显appinfo 的二级分类id
		List<Category> categoryList3 = categoryService.getCategoryListByParentId(categoryLevel2);//获取该二级分类下的所有三级分类
		
		request.setAttribute("categoryList1", categoryList1);
		request.setAttribute("categoryList2", categoryList2);
		request.setAttribute("categoryList3", categoryList3);
		request.setAttribute("flatformList", flatformList);
		request.setAttribute("appInfo", appInfo);
		request.setAttribute("appVersionList", appVersionList);
		return "userDev/detailAppInfo";
	}
	
	
	/**updateAppInfoStatus page*/
	@RequestMapping(value="updateAppInfoStatus",method=RequestMethod.GET)
	public String updateAppInfoStatus(HttpServletRequest request ,
			@RequestParam(value="id",required=true) Integer id,
			@RequestParam(value="type",required=true) String type){
		int res = 0;
		if( "up".equals(type) ){
			res = appInfoService.updateAppInfoStatusOn(id);
		}else if( "down".equals(type) ){
			res = appInfoService.updateAppInfoStatusDown(id);
		}
		
		return "forward:/app/appInfo/AppList";
	}
	
	
	/**updateAppInfo page*/
	@RequestMapping(value="updateAppInfo",method=RequestMethod.GET)
	public String updateAppInfo(
//			@ModelAttribute("appInfo")AppInfo appInfo,
			HttpServletRequest request ,Integer id){
		//加载appInfo 
		AppInfo appInfo = appInfoService.getAppInfoById(id);
		System.out.println("appInfo---getAppInfoById : "+appInfo);
		//加载flatformList
		List<Flatform> flatformList = flatformService.getFlatformList();
		//加载 categoryList1
		List<Category> categoryList1 = categoryService.getCategoryListByParentId(1);
		//加载 categoryList2 
		Integer categoryLevel1 = appInfo.getCategoryLevel1();//获取回显appinfo 的一级分类id
		List<Category> categoryList2 = categoryService.getCategoryListByParentId(categoryLevel1);//获取该一级分类下的所有二级分类
		//加载 categoryList3
		Integer categoryLevel2 = appInfo.getCategoryLevel2();//获取回显appinfo 的二级分类id
		List<Category> categoryList3 = categoryService.getCategoryListByParentId(categoryLevel2);//获取该二级分类下的所有三级分类
		
		request.setAttribute("categoryList1", categoryList1);
		request.setAttribute("categoryList2", categoryList2);
		request.setAttribute("categoryList3", categoryList3);
		request.setAttribute("flatformList", flatformList);
		request.setAttribute("appInfo", appInfo);
		return "userDev/updateAppInfo";
	}
	
	/**addAppInfo page*/
	@RequestMapping(value="addAppInfo",method=RequestMethod.POST)
	public String addAppInfo(HttpServletRequest request ){
		//加载flatformList
		List<Flatform> flatformList = flatformService.getFlatformList();
		//加载 categoryList1
		List<Category> categoryList1 = categoryService.getCategoryListByParentId(1);
		request.setAttribute("categoryList1", categoryList1);
		request.setAttribute("flatformList", flatformList);
		return "userDev/addAppInfo";
	}
	
	/** to  AppList */
	@RequestMapping(value="AppList",method=RequestMethod.POST)
	public String AppList(@RequestParam(value="pageIndex",required=false,defaultValue="1")String pageIndex,
			HttpServletRequest request ){
		System.out.println("POST AppList  ====== ");
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
		int totalCount = appInfoService.getCount(new AppInfo(),createId);
		
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
		return "userDev/AppList";
	}
	
	/** to  AppList GET 删除跳转无法跳入POST,所有加了这个方法*/
	@RequestMapping(value="AppList",method=RequestMethod.GET)
	public String AppListGet(@RequestParam(value="pageIndex",required=false,defaultValue="1")String pageIndex,
			HttpServletRequest request ){
		System.out.println("GET AppList  ====== ");
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
		int totalCount = appInfoService.getCount(new AppInfo(),createId);
		
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
		return "userDev/AppList";
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
	
	
	
	/** test 查询所有APP信息*/
	@RequestMapping("getAppInfoList")
	@ResponseBody
	public List<AppInfo> getAppInfoList(){
		return appInfoService.getAppInfoList();
	}
	
	/** test*/
	@RequestMapping("AppInfo")
	public String AppInfo(AppInfo appInfo){
		return "userDev/SelectAppInfo";
		
	}
	
	
	
	

}
