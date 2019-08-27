package cn.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.app.bean.UserDev;
import cn.app.service.UserDevService;

@Controller
@RequestMapping("userDev")
public class UserDevController {
	@Autowired
	private UserDevService userDevService;
	
	@RequestMapping("userDevList")
	@ResponseBody
	public List<UserDev> userDevList(){
		return userDevService.getUserDevList(null);
	}
}
