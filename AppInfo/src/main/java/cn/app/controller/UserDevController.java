package cn.app.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.app.bean.AppInfo;
import cn.app.bean.Category;
import cn.app.bean.Flatform;
import cn.app.bean.UserDev;
import cn.app.service.AppInfoService;
import cn.app.service.CategoryService;
import cn.app.service.FlatformService;
import cn.app.service.UserDevService;
import cn.app.utils.PageHelper;

@Controller
@RequestMapping("/app/userDev")
public class UserDevController {
	@Autowired
	private UserDevService userDevService;
	@Autowired
	private AppInfoService appInfoService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private FlatformService flatformService;
	
	/** 登录成功首页面 main.jsp */
	@RequestMapping(value="main",method=RequestMethod.GET)
	public String main(HttpServletRequest request ){
		return "userDev/main";
	}
	
	/** 登录成功首页面 main.jsp 
	@RequestMapping(value="main",method=RequestMethod.POST)
	public String main1(HttpServletRequest request ){
		return "userDev/main";
	}*/
	
	
	/**userDev修改密码提交   updateUserDevPasswordSubmit  */
	@RequestMapping(value="updateUserDevPasswordSubmit",method=RequestMethod.POST)
	@ResponseBody
	public String updateUserDevPasswordSubmit(HttpServletRequest request,
			@RequestParam(value="oldDevPassword",required=false,defaultValue="")String oldDevPassword,
			@RequestParam(value="password1",required=false,defaultValue="")String password1,
			@RequestParam(value="password2",required=false,defaultValue="")String password2){
		System.out.println("oldDevPassword:"+oldDevPassword);
		System.out.println("password1:"+password1);
		System.out.println("password2:"+password2);
		int res = 0;
		//session 获取登录的UserDev
		UserDev dbUserDev = (UserDev) request.getSession().getAttribute("loginUserDev");
		//修改前 确认原密码与登录的UserDev 的密码相同
		if(oldDevPassword.equals(dbUserDev.getDevPassword()) ){
			//修改前确认新密码与 确认新密码相同
			if( password1.equals(password2) ){
				dbUserDev.setDevPassword(password2);
				res = userDevService.updateUserDevPassword(dbUserDev);
			}
		}
		if(res == 1){
			return "true";
		}else{
			return "false";
		}
	}
	
	/**userDev修改资料提交   updateUserDevPageSubmit  */
	@RequestMapping(value="updateUserDevPageSubmit",method=RequestMethod.POST)
	@ResponseBody
	public String updateUserDevPageSubmit(HttpServletRequest request,
			@RequestParam(value="oldDevPassword",required=false,defaultValue="")String oldDevPassword,
			@RequestParam(value="password1",required=false,defaultValue="")String password1,
			@RequestParam(value="password2",required=false,defaultValue="")String password2){
		System.out.println("oldDevPassword:"+oldDevPassword);
		System.out.println("password1:"+password1);
		System.out.println("password2:"+password2);
		int res = 0;
		//session 获取登录的UserDev
		UserDev dbUserDev = (UserDev) request.getSession().getAttribute("loginUserDev");
		//修改前 确认原密码与登录的UserDev 的密码相同
		if(oldDevPassword.equals(dbUserDev.getDevPassword()) ){
			//修改前确认新密码与 确认新密码相同
			if( password1.equals(password2) ){
				dbUserDev.setDevPassword(password2);
				res = userDevService.updateUserDevPassword(dbUserDev);
			}
		}
		if(res == 1){
			return "true";
		}else{
			return "false";
		}
	}
	
	/**userDev修改资料提交   updateUserDevSubmit  */
	@RequestMapping(value="updateUserDevSubmit",method=RequestMethod.POST)
	@ResponseBody
	public String updateUserDevSubmit(HttpServletRequest request,UserDev userDev){
		
		System.out.println("userDev:-------"+ userDev);
		int res = 0;
		//session 获取登录的UserDev
		UserDev dbUserDev = (UserDev) request.getSession().getAttribute("loginUserDev");
		userDev.setId(dbUserDev.getId());
		res = userDevService.updateUserDev(userDev);
		if(res == 1){
			request.getSession().setAttribute("loginUserDev", userDev);
			return "true";
		}else{
			return "false";
		}
	}
	
	/**userDev修改密码页面跳转   updateUserDevPasswordPage  */
	@RequestMapping(value="updateUserDevPasswordPage",method=RequestMethod.GET)
	public String updateUserDevPasswordPage(){
		return "userDev/updateUserDevPasswordPage";
	}
	
	/**userDev修改资料页面跳转   updateUserDevPage  */
	@RequestMapping(value="updateUserDevPage",method=RequestMethod.GET)
	public String updateUserDev(){
		return "userDev/updateUserDev";
	}
	
	/** 登录成功页面 main.jsp 备用get提交 */
	@RequestMapping(value="main1",method=RequestMethod.GET)
	public String main1(@RequestParam(value="pageIndex",required=false,defaultValue="1")String pageIndex,
			HttpServletRequest request ){
		System.out.println("GET   appInfo====== null");
		UserDev userDev = (UserDev) request.getSession().getAttribute("loginUserDev");
		
		if(userDev == null){
			return "login";
		}
		int createId = userDev.getId();
		//加载flatformList
		List<Flatform> flatformList = flatformService.getFlatformList();
		
		//加载 categoryList1
		List<Category> categoryList1 = categoryService.getCategoryListByParentId(1);
		
		//加载 相关AppInfo 分页数据
		int currentPage = Integer.parseInt(pageIndex);
		PageHelper ph = new PageHelper();
		int totalCount = appInfoService.getCount(null,createId);
		
		if(totalCount != 0){
			ph.setPageSize(6);
			ph.setTotalCount(totalCount);
			if( currentPage <= 0 ){ currentPage = 1; }
			if( currentPage >= ph.getTotalPageCount() ){ currentPage = ph.getTotalPageCount(); }
		}
		ph.setCurrentPage(currentPage);
		
		List<AppInfo> appInfoList = appInfoService.getAppInfoLikePageHelper(ph,new AppInfo(),createId);
		request.setAttribute("appInfoList", appInfoList);
		request.setAttribute("categoryList1", categoryList1);
		request.setAttribute("flatformList", flatformList);
		request.setAttribute("ph", ph);
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
		return "index";
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
			return "index";
		}
	}
	
	/** Dev 用户注册 提交 ******************/
	@RequestMapping("userDevRegisterSubmit")
	public String userDevRegisterSubmit(UserDev userDev){
		userDev.setCreatedBy(1);
		userDev.setCreationDate(new Date());
		int res = userDevService.addUserDev(userDev);
		if(res == 1){
			return "index";
		}
		return "index";
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
