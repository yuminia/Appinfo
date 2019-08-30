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
                        <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentellela Alela!</span></a>
                    </div>
                    <div class="clearfix"></div>
                    <!-- menu prile quick info -->
                    <div class="profile">
                        <div class="profile_pic">
                            <img src="<%=request.getContextPath() %>/static/images/img.jpg" alt="..." class="img-circle profile_img">
                        </div>
                        <div class="profile_info">
                            <span>Welcome,</span>
                            <h2>Anthony Fernando</h2>
                        </div>
                    </div>
                    <!-- /menu prile quick info -->
                    <br />
                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                        <div class="menu_section">
                            <h3>General</h3>
                            <ul class="nav side-menu">
                                <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="index.html">Dashboard</a>
                                        </li>
                                        <li><a href="index2.html">Dashboard2</a>
                                        </li>
                                        <li><a href="index3.html">Dashboard3</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-edit"></i> Forms <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="form.html">General Form</a>
                                        </li>
                                        <li><a href="form_advanced.html">Advanced Components</a>
                                        </li>
                                        <li><a href="form_validation.html">Form Validation</a>
                                        </li>
                                        <li><a href="form_wizards.html">Form Wizard</a>
                                        </li>
                                        <li><a href="form_upload.html">Form Upload</a>
                                        </li>
                                        <li><a href="form_buttons.html">Form Buttons</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-desktop"></i> UI Elements <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="general_elements.html">General Elements</a>
                                        </li>
                                        <li><a href="media_gallery.html">Media Gallery</a>
                                        </li>
                                        <li><a href="typography.html">Typography</a>
                                        </li>
                                        <li><a href="icons.html">Icons</a>
                                        </li>
                                        <li><a href="glyphicons.html">Glyphicons</a>
                                        </li>
                                        <li><a href="widgets.html">Widgets</a>
                                        </li>
                                        <li><a href="invoice.html">Invoice</a>
                                        </li>
                                        <li><a href="inbox.html">Inbox</a>
                                        </li>
                                        <li><a href="calender.html">Calender</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-table"></i> Tables <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="tables.html">Tables</a>
                                        </li>
                                        <li><a href="tables_dynamic.html">Table Dynamic</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-bar-chart-o"></i> Data Presentation <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="chartjs.html">Chart JS</a>
                                        </li>
                                        <li><a href="chartjs2.html">Chart JS2</a>
                                        </li>
                                        <li><a href="morisjs.html">Moris JS</a>
                                        </li>
                                        <li><a href="echarts.html">ECharts </a>
                                        </li>
                                        <li><a href="other_charts.html">Other Charts </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="menu_section">
                            <h3>Live On</h3>
                            <ul class="nav side-menu">
                                <li><a><i class="fa fa-bug"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="e_commerce.html">E-commerce</a>
                                        </li>
                                        <li><a href="projects.html">Projects</a>
                                        </li>
                                        <li><a href="project_detail.html">Project Detail</a>
                                        </li>
                                        <li><a href="contacts.html">Contacts</a>
                                        </li>
                                        <li><a href="profile.html">Profile</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu" style="display: none">
                                        <li><a href="page_404.html">404 Error</a>
                                        </li>
                                        <li><a href="page_500.html">500 Error</a>
                                        </li>
                                        <li><a href="plain_page.html">Plain Page</a>
                                        </li>
                                        <li><a href="login.html">Login Page</a>
                                        </li>
                                        <li><a href="pricing_tables.html">Pricing Tables</a>
                                        </li>

                                    </ul>
                                </li>
                                <li><a><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a>
                                </li>
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
                                    ${loginUserDev.devCode }
                                    <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                    <li><a href="javascript:;"> Profile</a> </li>
                                    <li>
                                        <a href="javascript:;">
                                            <span class="badge bg-red pull-right">50%</span>
                                            <span>Settings</span>
                                        </a>
                                    </li>
                                    <li><a href="javascript:;">Help</a></li>
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
                                    <span class="badge bg-green">6</span>
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
                <div class="">
                	<div class="x_panel">
	                	<div class="x_title">
							<h2>
								APP 信息管理维护 <i class="fa fa-user"></i><small>${devUserSession.devName}
									- 您可以通过搜索或者其他的筛选项对APP的信息进行修改、删除等管理操作。^_^</small>
							</h2>
							<div class="clearfix"></div>
						</div>
	                    <div class="x_content">
	                        <div class="row">
	                        
	                        	<form class="form-horizontal form-label-left" id="searchCriteria">
		                            <div class="col-md-3 col-sm-12 col-xs-12 form-inline">
		                                <label for="ex1" >软件名称 </label>
		                                <input name="softwareName" type="text" id="ex1" class="form-control" style="width:117px;"><br>
		                                
		                                <label>一级分类 </label>
		                                <select class="form-control" name="categoryLevel1" id="categoryLevel1">
			                                	<option value="">-- 请选择 --</option>
			                                <c:forEach items="${categoryList1 }" var="item">
			                                	<option value="${item.id }">${item.categoryName }</option>
			                                </c:forEach>
		                                </select>
		                            </div>
		                            <!--/**int(30) APP状态<br>
												 * 1 待审核<br>* 2 审核未通过<br>* 3 审核通过<br>* 4 已上架<br>* 5 已下架*/-->
		                            <div class="col-md-3 col-sm-12 col-xs-12 form-inline">
		                                <label>APP状态 </label>
		                                <select class="form-control">
		                                	<option value="0">-- 请选择 --</option>
		                                	<option value="1">待审核</option>
		                                	<option value="2">审核未通过</option>
		                                	<option value="3">审核通过</option>
		                                	<option value="4">已上架</option>
		                                	<option value="5">已下架</option>
		                                </select><br>
		                                
		                                <label>二级分类 </label>
		                                <select class="form-control" name="categoryLevel2" id="categoryLevel2">
		                                	<option value="0">-- 请选择 --</option>
		                                </select>
		                            </div>
		                            
		                            <div class="col-md-3 col-sm-12 col-xs-12 form-inline">
		                                <label>所属平台 </label>
		                                <select class="form-control">
		                                	<option>-- 请选择 --</option>
		                                </select><br>
		                                <label>三级分类 </label>
		                                <select class="form-control" name="categoryLevel3" id="categoryLevel3">
		                                	<option>-- 请选择 --</option>
		                                </select>
		                            </div>
		                        </form>
		                        
	                        </div><br>
	                        
							
	                        <a href="javascript:pageAppInfoList(${ph.currentPage-1});" class="btn btn-info btn-sm" >
	                        	查 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;询
	                        </a>
	                        
	<!--                         <div class="title_right"></div> -->
	                    </div>
	                    <div class="clearfix"></div>
					</div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel" style="height:600px;">
                                <div class="x_title">
                                    <a class="btn btn-success btn-sm" href="#">新增App基础信息</a>
                                </div>
                            	
                            	<div class="x_content">
                                    <table id="example" class="table table-striped responsive-utilities jambo_table">
                                        <thead>
                                            <tr class="headings">
                                                <th><input type="checkbox" class="tableflat"></th>
                                                <th>软件名称 </th>
                                                <th>APK名称</th>
                                                <th>软件大小(单位:M) </th>
                                                <th>所属平台 </th>
                                                <th>所属分类(一级分类/二级分类/三级分类) </th>
                                                <th>状态 </th>
                                                <th>下载次数 </th>
                                                <th>最新版本 </th>
                                                <th class=" no-link last"><span class="nobr">操作</span>
                                                </th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach items="${appInfoList }" var="item" varStatus="staus">
                                            <tr class="even pointer">
                                                <td class="a-center "><input type="checkbox" class="tableflat"></td>
                                                <td class=" ">${item.softwareName }</td>
                                                <td class=" ">${item.APKName } </td>
                                                <td class=" ">${item.softwareSize }</td>
                                                <td class=" ">${item.flatformName }</td>
                                                <td class=" ">${item.categoryName1 }->${item.categoryName2 }->${item.categoryName3 }</td>
												
												<!--/**int(30) APP状态<br>
												 * 1 待审核<br>* 2 审核未通过<br>* 3 审核通过<br>* 4 已上架<br>* 5 已下架*/-->
												
												<c:if test="${item.status == 1 }">
                                                	<td class="a-right a-right ">待审核</td>
                                                </c:if>
												<c:if test="${item.status == 2 }">
                                                	<td class="a-right a-right ">审核未通过</td>
                                                </c:if>
												<c:if test="${item.status == 3 }">
                                                	<td class="a-right a-right ">审核通过</td>
                                                </c:if>
												<c:if test="${item.status == 4 }">
                                                	<td class="a-right a-right ">已上架</td>
                                                </c:if>
												<c:if test="${item.status == 5 }">
                                                	<td class="a-right a-right ">已下架</td>
                                                </c:if>
                                                <c:if test="${item.downloads==null or  item.downloads==''}">
                                                	<td class="a-right a-right ">0</td>
                                                </c:if>
                                                <c:if test="${item.downloads!=null and  item.downloads!=''}">
                                                	<td class="a-right a-right ">${item.downloads }</td>
                                                </c:if>
                                                <td class="a-right a-right ">${item.versionNo }</td>
                                                <td class=" last">
                                                	<a class="btn btn-xs btn-warning" href="#">修改</a>
                                                	<a class="btn btn-xs btn-danger" href="#">删除</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                    
                                    
                                    <nav aria-label="Page navigation">
									  <ul class="pagination">
									  	<c:if test="${ph.currentPage != 1 }">
									    	<li>
									    		<a href="javascript:pageAppInfoList(${ph.currentPage-1});" aria-label="Previous">
									    			<span aria-hidden="true">&laquo;</span>
									    		</a>
									    	</li>
										</c:if>
										
										<c:forEach begin="1" end="${ph.totalPageCount }" varStatus="statu">
											<c:if test="${ph.currentPage == statu.count }">
												<li>
													<a class="middleNum" style="background:#999;" 
														href="javascript:pageAppInfoList(${statu.count });">
														${statu.count }
													</a>
												</li>
											</c:if>
											<c:if test="${ph.currentPage != statu.count }">
												<li><a class="middleNum" 
												href="javascript:pageAppInfoList(${statu.count });">${statu.count }</a></li>
											</c:if>
										</c:forEach>
										
										<c:if test="${ph.currentPage != ph.totalPageCount }">
										    <li>
										      <a href="javascript:pageAppInfoList(${ph.currentPage+1 });" aria-label="Next">
										      	<span aria-hidden="true">&raquo;</span>
										      </a>
										    </li>
										</c:if>
									    
									  </ul>
									</nav>
                                    
                                </div>
        <script type="text/javascript">
	      	//AppList 跳转
			function pageAppInfoList(pageIndex){
				var data = $("#searchCriteria").serialize();
				$("body").load("${pageContext.request.contextPath}/app/userDev/main",
					{"pageIndex":pageIndex,"userName":"${userName}"})
			};
			
			//根据一级分类加载二级分类
			$("#categoryLevel1").change(function(){
				var categoryLevel1 = $("#categoryLevel1 option:selected").val();
				$.ajax({
					url:"<%=request.getContextPath() %>/app/category/getCategoryList",
					data:{"categoryLevel1":categoryLevel1},
					dataType:"json",
					success:function(data){
						var html = "<option value='0'>-- 请选择 --</option>";
						if(data != null && data != ''){
							data.forEach(function(item){
								html += "<option value='"+ item["id"] +"'>"+ item["categoryName"] +"</option>";
							});
						}else{
							$("#categoryLevel2").html("<option value='0'>-- 请选择 --</option>");
							$("#categoryLevel3").html("<option value='0'>-- 请选择 --</option>");
						}
						$("#categoryLevel2").html(html);
					}
				});
			});
			
			//根据二级分类加载三级分类
			$("#categoryLevel2").change(function(){
				var categoryLevel1 = $("#categoryLevel2 option:selected").val();
				$.ajax({
					url:"<%=request.getContextPath() %>/app/category/getCategoryList",
					data:{"categoryLevel1":categoryLevel1},
					dataType:"json",
					success:function(data){
						var html = "<option value='0'>-- 请选择 --</option>";
						if(data != null && data != ''){
							data.forEach(function(item){
								html += "<option value='"+ item["id"] +"'>"+ item["categoryName"] +"</option>";
							});
						}else{
							$("#categoryLevel3").html("<option value='0'>-- 请选择 --</option>");
						}
						$("#categoryLevel3").html(html);
					}
				});
			});
			//{categoryCode: "code2_01", categoryName: "社交聊天", creationTime: "2019-08-27 09:14:02", id: 5, parentId: 2}
        </script>
                            </div>
                        </div>
                    </div>
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