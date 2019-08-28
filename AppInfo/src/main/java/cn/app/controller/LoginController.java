package cn.app.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
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
public class LoginController {
	private Logger log = Logger.getLogger(LoginController.class);
	@Resource
	private UserBackendService userBackendService;
	private UserDevService userDevService;

	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	/**
	 * 登录验证
	 * 
	 * @author yuminia
	 * @return String
	 * 
	 */
	public String doLogin(String userCode, String userPassword, Model model,HttpServletRequest request) {
		log.info("用户登录：" + userCode);
		UserDev userDev = new UserDev();
		UserBackend userBackend = null;
		String DevOrBackend = request.getParameter("DevOrBackend");
		if ("Dev".equals(DevOrBackend)) {
			userDev.setDevCode(userCode);
			userDev.setDevPassword(userPassword);
			userDev = userDevService.getUserDevByUserDevCodeAndPassword(userDev);
			log.info(userDev + "登录到 开发者 平台");
			if (userDev == null) {
				model.addAttribute("message", "用户名或密码错误！");
				return "login";
			} else {
				model.addAttribute("user", userDev);
				return "index";
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
		return "login";

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	/**
	 * 跳转至登录
	 * 
	 * @author yuminia
	 * @return String
	 * 
	 */
	public String login(HttpServletRequest request, String DevOrBackend) {
		request.setAttribute("DevOrBackend", DevOrBackend);
		return "login";
	}
}
