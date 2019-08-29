package cn.app.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.app.bean.AppInfo;
import cn.app.bean.UserDev;
import cn.app.service.AppInfoService;
import cn.app.service.UserDevService;

@Controller
@RequestMapping("/app/userDev")
public class UserDevController {
	@Autowired
	private UserDevService userDevService;
	@Autowired
	private AppInfoService appInfoService;
	
	/** 登录成功页面 main.jsp */
	@RequestMapping("main")
	public String main(UserDev userDev,HttpServletRequest request){
		//加载 相关AppInfo数据
		List<AppInfo> appInfoList = appInfoService.getAppInfoList();
		System.out.println("appInfoList--------------------------------------------");
		System.out.println("appInfoList" + appInfoList);
		request.setAttribute("appInfoList", appInfoList);
		return "userDev/main";
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
		return "userDev/userDevLogin";
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
			return "userDev/userDevLogin";
		}
	}
	
	/** Dev 用户注册 提交 */
	@RequestMapping("userDevRegisterSubmit")
	public String userDevRegisterSubmit(UserDev userDev){
		userDev.setCreatedBy(1);
		userDev.setCreationDate(new Date());
		int res = userDevService.addUserDev(userDev);
		if(res == 1){
			return "login";
		}
		return "login";
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
