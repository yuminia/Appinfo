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
import cn.app.bean.UserDev;
import cn.app.service.AppInfoService;
import cn.app.service.AppVersionService;

@Controller
@RequestMapping("app/version")
public class AppVersionController {
	@Autowired
	private AppVersionService appVersionService;
	@Autowired
	private AppInfoService appInfoService;
	
	/** 添加版本  page*/
	@RequestMapping("addAppVersionPage")
	public String addAppVersionPage(HttpServletRequest request,Integer appId){
		List<AppVersion> appVersionList = appVersionService.getAppVersionByAppId(appId);
		
		AppInfo appInfo = appInfoService.getAppInfoById(appId);
		request.setAttribute("appVersionList", appVersionList);
		request.setAttribute("appInfo", appInfo);
		return "userDev/addAppVersion";
	}
	
	/** 添加版本*/
	@ResponseBody
	@RequestMapping(value="addAppVersionSubmit",method=RequestMethod.POST)
	public String addAppVersionSubmit(AppVersion appVersion, HttpServletRequest request,
			@RequestParam(value="file_apkLocPath",required=false)MultipartFile multipartFile){
		System.out.println("appVersion: " +appVersion);
		
		String errorInfo = "";//错误信息
		String fileName = "";
		boolean isResult = true;//是否出错
//		if( !multipartFile.isEmpty() ){
			String oldName = multipartFile.getOriginalFilename();
			//获取原文件后缀
			String oldSuffix = FilenameUtils.getExtension(oldName);
			int fileSize = 524288;
			if( multipartFile.getSize() > fileSize ){
				isResult = false;
				errorInfo = "文件大小不得超过500KB";
			}else if( oldSuffix.equalsIgnoreCase("apk") ){
				fileName = System.currentTimeMillis() + RandomUtils.nextInt(100000) 
									+ "_apkFile.apk";
				System.out.println("fileName------== : " +fileName);
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
				errorInfo = "文件格式错误!必须以apk结尾";
			}
//		}
		
		if( isResult ){
			System.out.println("isResult ==============" +isResult);
			UserDev loginUser = (UserDev) request.getSession().getAttribute("loginUserDev");
			appVersion.setCreatedBy(loginUser.getId());
			appVersion.setCreationDate(new Date());
			appVersion.setApkLocPath(fileName);
			Integer result = appVersionService.addAppVersion(appVersion);
			System.out.println("------------appVersion :" + appVersion);
			if( result == 1 ){
				return "true";
			}else{
				return errorInfo;
			}
		}else{
			return errorInfo;
		}
	}
	
	/** 修改版本  page*/
	@RequestMapping("updateAppVersionPage")
	public String updateAppVersionPage(HttpServletRequest request,Integer appId){
		//历史版本集合
		List<AppVersion> appVersionList = appVersionService.getAppVersionByAppId(appId);
		//最新版本
		AppVersion appVersion = appVersionService.getLastAppVersionByAppId(appId);
		//AppInfo 实体
		AppInfo appInfo = appInfoService.getAppInfoById(appId);
		System.out.println("==========================appVersion : " +appVersion);
		request.setAttribute("appVersionList", appVersionList);
		request.setAttribute("appVersion", appVersion);
		request.setAttribute("appInfo", appInfo);
		return "userDev/updateAppVersion";
	}
	
	/** 修改版本*/
	@ResponseBody
	@RequestMapping(value="updateAppVersionSubmit",method=RequestMethod.POST)
	public String updateAppVersionSubmit(AppVersion appVersion, HttpServletRequest request,
			@RequestParam(value="file_apkLocPath",required=false)MultipartFile multipartFile){
		System.out.println("appVersion: " +appVersion);
		
		String errorInfo = "";//错误信息
		String fileName = "";
		boolean isResult = true;//是否出错
//	if( !multipartFile.isEmpty() ){
		String oldName = multipartFile.getOriginalFilename();
		//获取原文件后缀
		String oldSuffix = FilenameUtils.getExtension(oldName);
		int fileSize = 524288;
		if( multipartFile.getSize() > fileSize ){
			isResult = false;
			errorInfo = "文件大小不得超过500KB";
		}else if( oldSuffix.equalsIgnoreCase("apk") ){
			fileName = System.currentTimeMillis() + RandomUtils.nextInt(100000) 
			+ "_apkFile.apk";
			System.out.println("fileName------== : " +fileName);
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
			errorInfo = "文件格式错误!必须以apk结尾";
		}
//	}
		
		if( isResult ){
			System.out.println("isResult ==============" +isResult);
			UserDev loginUser = (UserDev) request.getSession().getAttribute("loginUserDev");
			appVersion.setCreatedBy(loginUser.getId());
			appVersion.setCreationDate(new Date());
			if( !"".equals(fileName) ){
				appVersion.setApkLocPath(fileName);
			}
				
			Integer result = appVersionService.updateAppVersion(appVersion);
			System.out.println("------------appVersion :" + appVersion);
			if( result == 1 ){
				return "true";
			}else{
				return errorInfo;
			}
		}else{
			return errorInfo;
		}
	}
	
	
	
	
}
