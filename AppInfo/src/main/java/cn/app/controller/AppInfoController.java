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
import cn.app.bean.Category;
import cn.app.bean.Flatform;
import cn.app.bean.UserDev;
import cn.app.service.AppInfoService;
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
				File targetFile = new File(saveFile, fileName);
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
			appInfo.setLogoLocPath(fileName);
			Integer result = appInfoService.addAppInfo(appInfo);
			if( result == 1 ){
				return "true";
			}else{
				return "false";
			}
		}else{
			request.setAttribute("errorInfo", errorInfo);
			return "false";
		}
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
