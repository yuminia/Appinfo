package cn.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.app.service.AppBackendService;

/**
* @author yuminia
* @version 创建时间：2019年8月27日 下午5:38:13
* 
*/
@Controller
@RequestMapping("/app/Backend/admin")
public class AppBackendController {
	@Autowired
	private AppBackendService appBackendService;
	
	@RequestMapping("main")
	public String main(){
		return "appBackend/main";
	}
}
