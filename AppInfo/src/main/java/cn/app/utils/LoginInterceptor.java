package cn.app.utils;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import cn.app.bean.UserBackend;
import cn.app.bean.UserDev;


/**
* @author yuminia
* 
* 
*/
public class LoginInterceptor extends HandlerInterceptorAdapter{
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler) throws IOException {
		UserDev userDev = (UserDev)request.getSession().getAttribute("userDev");
		UserBackend userBackend = (UserBackend)request.getSession().getAttribute("userBackend");
		if (userDev==null&&userBackend==null) {
			response.sendRedirect(request.getContextPath()+"/sys/user/login");
			return false;
		}else {
			return true;
		}
	}
}
