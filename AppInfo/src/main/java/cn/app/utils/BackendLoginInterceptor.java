package cn.app.utils;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import cn.app.bean.UserBackend;

/**
* @author yuminia
* @version 创建时间：2019年8月28日 上午9:50:07
* 
*/
public class BackendLoginInterceptor  extends HandlerInterceptorAdapter{
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler) throws IOException {
		UserBackend userBackend = (UserBackend)request.getSession().getAttribute("loginUserBackend");
		System.out.println("拦截器===============================================");
		if (userBackend==null) {
			response.sendRedirect(request.getContextPath()+"/app/logout");
			return false;
		}else {
			return true;
		}
	}
}
