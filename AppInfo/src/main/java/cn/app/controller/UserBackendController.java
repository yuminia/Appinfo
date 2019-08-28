package cn.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping("login")
	public String userBackendLogin(){
		return "login";
	}
}
