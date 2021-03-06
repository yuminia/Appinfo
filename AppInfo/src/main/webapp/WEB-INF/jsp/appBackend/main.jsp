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
    <title>App开发平台</title>
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
                        <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>APP 后台管理</span></a>
                    </div>
                    <div class="clearfix"></div>

                    <!-- menu prile quick info -->
                    <div class="profile">
                        <div class="profile_pic">
                            <img src="<%=request.getContextPath() %>/static/images/img.jpg" alt="..." class="img-circle profile_img">
                        </div>
                        <div class="profile_info">
                            <span>欢迎,</span>
                            <h2><c:out value="${loginUserBackend.userName}"/></h2>
                        </div>
                    </div>
                    <!-- /menu prile quick info -->

                    <br />

                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                        <div class="menu_section">
                            <h3>高级管理员</h3>
                            <ul class="nav side-menu">
                                <li><a><i class="fa fa-home"></i> APP管理 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a id="appList" href="javascript:;">App列表</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-edit"></i> 用户管理 <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <!-- <li><a id="userList" href="javascript:;">开发者用户</a>
                                        </li> -->
                                        <li><a id="adminList" href="javascript:;">管理者用户</a> 
                                        </li>
                                    </ul>
                                </li>
                                <!-- <li><a><i class="fa fa-bug"></i>基础数据维护<span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="e_commerce.html">E-commerce</a>
                                        </li>
                                    </ul>
                                </li> -->
                            </ul>
                        </div>
                    </div>
                    <!-- /sidebar menu -->

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
                                    ${loginUserDev.devCode }
                                    <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                    <li>
                                    	<a href="<%=request.getContextPath() %>/app/Backend/userBackendlogout">
                                    		<i class="fa fa-sign-out pull-right"></i> 注销
                                    	</a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </nav>
                </div>

            </div>
            <!-- /top navigation -->

            <!-- page content -->
            <div id="right_col" class="right_col" role="main">

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
  <%--   <script src="<%=request.getContextPath() %>/static/js/moris/morris.js"></script>
    <script src="<%=request.getContextPath() %>/static/js/moris/example.js"></script> --%>
	<script type="text/javascript">
	$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/appList");
	$("#adminList").click(function(){
		$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/adminList");
		});
	$("#appList").click(function(){
		$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/appList");
		});
	$("#userList").click(function(){
		$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/userList");
		});
	</script>
</body>

</html>