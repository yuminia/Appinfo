package cn.app.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.app.bean.UserBackend;
import cn.app.bean.UserDev;
import cn.app.service.UserBackendService;
import cn.app.service.UserDevService;

/**
 * @author yuminia
 * @version创建时间：2019年8月27日 上午11:35:30
 * 
 */
@Controller
@RequestMapping("app")
public class LoginController {
	private Logger log = Logger.getLogger(LoginController.class);
	@Resource
	private UserBackendService userBackendService;
	@Resource
	private UserDevService userDevService;

	
	/**
	 * 登录验证
	 * 
	 * @author yuminia
	 * @return String
	 * 
	 */
	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public String doLogin(String userCode, String userPassword,String DevOrBackend ,Model model,HttpServletRequest request) {
		log.info("用户登录：" + userCode+"  pwd:"+userPassword);
		UserDev userDev = new UserDev();
		UserBackend userBackend = null;
		if ("Dev".equals(DevOrBackend)) {
			userDev.setDevCode(userCode);
			userDev.setDevPassword(userPassword);
			userDev = userDevService.getUserDevByUserDevCodeAndPassword(userDev);
			log.info(userDev + "登录到 开发者 平台");
			if (userDev == null) {
				model.addAttribute("message", "用户名或密码错误！");
				return "login";
			} else {
				request.getSession().setAttribute("loginUserDev", userDev);
				return "redirect:userDev/main";
			}
		} else if ("Backend".equals(DevOrBackend)) {
		userBackend = userBackendService.loginToBackend(userCode, userPassword);
			log.info(userBackend + "登录到 管理者 平台");
			if (userBackend == null) {
				model.addAttribute("message", "用户名或密码错误！");
				return "login";
			} else {
				model.addAttribute("user", userBackend);
				return "index";
			}
		}
		return "index";

	}

	
	/**
	 * 跳转至登录
	 * 
	 * @author yuminia
	 * @return String
	 * 
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest request, String DevOrBackend) {
		request.setAttribute("DevOrBackend", DevOrBackend);
		return "login";
	}
}
