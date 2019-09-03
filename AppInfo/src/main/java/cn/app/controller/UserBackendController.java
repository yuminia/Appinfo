package cn.app.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.app.bean.UserBackend;
import cn.app.service.UserBackendService;

/**
* @author yuminia
* @version 创建时间5:04:46
* 
*/
@Controller
@RequestMapping("/app/Backend")
public class UserBackendController {
	@Autowired
	private UserBackendService userBackendService;
	
	/** 管理用户 注销 */
	@RequestMapping("userBackendlogout")
	public String userBackendlogout(HttpServletRequest request){
		request.getSession().removeAttribute("loginUserBackend");
		return "index";
	}
	
	@RequestMapping("addAdmin")
	public String addAdmin(UserBackend userBackend){
		userBackend.setCreatedBy(1);
		userBackend.setCreationDate(new Date());
		int res = userBackendService.addUserBackend(userBackend);
		if(res == 1){
			return "userDev/userDevLogin";
		}
		return null;
	}
}
