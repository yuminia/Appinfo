package cn.app.utils;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import cn.app.bean.UserDev;


/**
* @author yuminia
* 
* 
*/
public class DevLoginInterceptor extends HandlerInterceptorAdapter{
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler) throws IOException {
		UserDev userDev = (UserDev)request.getSession().getAttribute("userDev");
		if (userDev==null) {
			response.sendRedirect(request.getContextPath()+"/index");
			return false;
		}else {
			return true;
		}
	}
}
