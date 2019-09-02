<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gentallela Alela! | </title>
    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath() %>/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/static/fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/static/css/animate.min.css" rel="stylesheet">
    <!-- Custom styling plus plugins -->
    <link href="<%=request.getContextPath() %>/static/css/custom.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/static/css/icheck/flat/green.css" rel="stylesheet">
    <script src="<%=request.getContextPath() %>/static/js/jquery.min.js"></script>
</head>


<body class="nav-md">

    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">

                    <div class="navbar nav_title" style="border: 0;">
                        <a href="index.html" class="site_title">
	                        <i class="fa fa-paw"></i> 
	                        <span>APP开发平台管理</span>
                     	</a>
                    </div>
                    <div class="clearfix"></div>

                    <!-- menu prile quick info -->
                    <div class="profile">
                        <div class="profile_pic">
                            <img src="<%=request.getContextPath() %>/static/images/img.jpg" alt="..." class="img-circle profile_img">
                        </div>
                        <div class="profile_info">
                            <span>欢迎,</span>
                            <h2>${loginUserDev.devName}</h2>
                        </div>
                    </div>
                    <!-- /menu prile quick info -->

                    <br />

                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                        <div class="menu_section">
                            <h3>高级管理员</h3>
                            <ul class="nav side-menu">
                                <li>	
                                	<a>
                                		<i class="fa fa-edit"></i> 用户管理 
                                		<span class="fa fa-chevron-down"></span>
                                	</a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li>
                                        	<a href="javascript:;pageToMainTypeGet('userDev/main');">欢迎页面</a>
                                        </li>
                                        <li>
                                        	<a href="form_advanced.html">上传/修改 头像</a>
                                        </li>
                                        <li>
                                        	<a href="javascript:;pageToGet('userDev/updateUserDevPage');">修改资料</a>
                                        </li>
                                        <li>
                                        	<a href="javascript:;pageToGet('userDev/updateUserDevPasswordPage');">修改密码</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-home"></i> APP管理 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li>
                                        	<a href="javascript:;pageTo('appInfo/AppList');">App列表</a>
                                        </li>
                                    </ul>
                                </li>
<!--                                 <li> -->
<!--                                 	<a> -->
<!--                                 		<i class="fa fa-bug"></i>基础数据维护 -->
<!--                                 		<span class="fa fa-chevron-down"></span> -->
<!--                                 	</a> -->
<!--                                     <ul class="nav child_menu" style="display: none"> -->
<!--                                         <li><a href="e_commerce.html">E-commerce</a> -->
<!--                                         </li> -->
<!--                                     </ul> -->
<!--                                 </li> -->
                            </ul>
                        </div>
                    </div>
                    <!-- /sidebar menu -->

                    <!-- /menu footer buttons -->
                    <div class="sidebar-footer hidden-small">
                        <a data-toggle="tooltip" data-placement="top" title="Settings">
                            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                            <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="Lock">
                            <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="Logout">
                            <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                        </a>
                    </div>
                    <!-- /menu footer buttons -->
                </div>
            </div>
            
            <!-- top navigation -->
            <div class="top_nav">

                <div class="nav_menu">
                    <nav class="" role="navigation">
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>

                        <ul class="nav navbar-nav navbar-right">
                            <li class="">
                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <img src="<%=request.getContextPath() %>/static/images/img.jpg" alt="">
                                    ${loginUserDev.devName }
                                    <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                    <li>
                                    	<a href="<%=request.getContextPath() %>/app/userDev/userDevlogOut">
                                    		<i class="fa fa-sign-out pull-right"></i> Log Out
                                    	</a>
                                    </li>
                                </ul>
                            </li>

                            <li role="presentation" class="dropdown">
                                <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="badge bg-green">1</span>
                                </a>
                                <ul id="menu1" class="dropdown-menu list-unstyled msg_list animated fadeInDown" role="menu">
                                    <li>
                                        <a>
                                            <span class="image">
                                        		<img src="<%=request.getContextPath() %>/static/images/img.jpg" alt="Profile Image" />
                                    		</span>
                                            <span>
                                        		<span>John Smith</span>
                                            	<span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
		                                        Film festivals used to be do-or-die moments for movie makers. They were where... 
		                                    </span>
                                        </a>
                                    </li>
                                    <li>
                                        <div class="text-center">
                                            <a>
                                                <strong>See All Alerts</strong>
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </nav>
                </div>

            </div>
            <!-- /top navigation -->

            <!-- page content -->
            <div class="right_col" role="main">
                <div id="contentDiv">
                	<div class="x_panel">
	                	<div class="x_title">
							<h2>
								欢迎你: ${loginUserDev.devName }
								| 角色 : ${loginUserDev.devCode }
							</h2>
							<div class="clearfix"></div>
						</div>
	                    
	                    <div class="x_content">
		                    <div class="animate form">
				                <section class="login_content">
				                	<form id="updateUserDev" class="form-horizontal form-label-left" novalidate 
				                		action="javascrpt:;" method="post">
				                        <h1>UserDev 资料详情</h1>
				                        <div class="item form-group" style="position: relative;">
				                        	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="devCode">用户编号 <span class="required">*</span></label>
				                        	<div class="col-md-6 col-sm-6 col-xs-12">
					                        	 ${loginUserDev.devCode }
				                        	</div>
				                        </div>
				                        
				                        <div class="item form-group">
				                             <label class="control-label col-md-3 col-sm-3 col-xs-12" for="devName">登录名 <span class="required">*</span></label>
				                             <div class="col-md-6 col-sm-6 col-xs-12">
				                                  ${loginUserDev.devName }
				                             </div>
				                         </div>
				                        <div class="item form-group">
				                             <label class="control-label col-md-3 col-sm-3 col-xs-12" for="devEmail">邮箱 <span class="required">*</span>
				                             </label>
				                             <div class="col-md-6 col-sm-6 col-xs-12">
				                                 ${loginUserDev.devEmail }
				                             </div>
				                         </div>
				                        <div class="item form-group">
				                             <label class="control-label col-md-3 col-sm-3 col-xs-12" for="devInfo">开发者信息<span class="required">*</span>
				                             </label>
				                             <div class="col-md-6 col-sm-6 col-xs-12">
												${loginUserDev.devInfo }
				                             </div>
				                        </div>
				                        
				                        
				                        <div class="clearfix"></div>
				                        
				                        <div class="separator">
				                            <br />
				                            <div>
				                                <h1><i class="fa fa-paw" style="font-size: 26px;"></i> App开发平台</h1>
				                            </div>
				                        </div>
				                    </form>
				                </section>
				            </div>
	                    </div>
	                    
					</div>
                    
        <script type="text/javascript">
        	function pageTo(page){
        		$("#contentDiv").load("${pageContext.request.contextPath}/app/"+page,
        				{"pageIndex":1});
        	}
        	
        	function pageToGet(page){
        		$("#contentDiv").load("${pageContext.request.contextPath}/app/"+page);
        	}
        	
        	function pageToMainTypeGet(page){
        		$("body").load("${pageContext.request.contextPath}/app/"+page);
        	}
	      	
        	
        	
        	
        </script>
                     
                </div>

                <!-- footer content -->
                <footer>
                    <div class="">
                        <p class="pull-right">Gentelella Alela! a Bootstrap 3 template by <a>Kimlabs</a>. |
                            <span class="lead"> <i class="fa fa-paw"></i> Gentelella Alela!</span>
                        </p>
                    </div>
                    <div class="clearfix"></div>
                </footer>
                <!-- /footer content -->

            </div>
            <!-- /page content -->
        </div>

    </div>

    <div id="custom_notifications" class="custom-notifications dsp_none">
        <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
        </ul>
        <div class="clearfix"></div>
        <div id="notif-group" class="tabbed_notifications"></div>
    </div>

    <script src="<%=request.getContextPath() %>/static/js/bootstrap.min.js"></script>

    <!-- chart js -->
    <script src="<%=request.getContextPath() %>/static/js/chartjs/chart.min.js"></script>
    <!-- bootstrap progress js -->
    <script src="<%=request.getContextPath() %>/static/js/progressbar/bootstrap-progressbar.min.js"></script>
    <script src="<%=request.getContextPath() %>/static/js/nicescroll/jquery.nicescroll.min.js"></script>
    <!-- icheck -->
    <script src="<%=request.getContextPath() %>/static/js/icheck/icheck.min.js"></script>

    <script src="<%=request.getContextPath() %>/static/js/custom.js"></script>

    <!-- moris js -->
    <script src="<%=request.getContextPath() %>/static/js/moris/raphael-min.js"></script>
<%--     <script src="<%=request.getContextPath() %>/static/js/moris/morris.js"></script> --%>
<%--     <script src="<%=request.getContextPath() %>/static/js/moris/example.js"></script> --%>

</body>

</html>