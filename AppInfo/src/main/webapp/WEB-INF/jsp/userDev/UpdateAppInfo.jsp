<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AppInfo</title>
<!-- Bootstrap core CSS -->
<link href="<%=request.getContextPath()%>/static/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/static/fonts/css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/static/css/animate.min.css"
	rel="stylesheet">
<!-- Custom styling plus plugins -->
<link href="<%=request.getContextPath()%>/static/css/custom.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/static/css/icheck/flat/green.css"
	rel="stylesheet">
<script src="<%=request.getContextPath()%>/static/js/jquery.min.js"></script>
</head>
<body class="nav-md">

	<div class="container body">
		<div class="main_container">

			<div class="col-md-3 left_col">
				<div class="left_col scroll-view"></div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<nav class="" role="navigation">
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>
					<ul class="nav navbar-nav navbar-right">
						<li class=""><a href="javascript:;"
							class="user-profile dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false"> <img src="images/img.jpg" alt="">John
								Doe <span class=" fa fa-angle-down"></span>
						</a>
							<ul
								class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
								<li><a href="javascript:;"> Profile</a></li>
								<li><a href="javascript:;"> <span
										class="badge bg-red pull-right">50%</span> <span>Settings</span>
								</a></li>
								<li><a href="javascript:;">Help</a></li>
								<li><a href="login.html"><i
										class="fa fa-sign-out pull-right"></i> Log Out</a></li>
							</ul></li>

						<li role="presentation" class="dropdown"><a
							href="javascript:;" class="dropdown-toggle info-number"
							data-toggle="dropdown" aria-expanded="false"> <i
								class="fa fa-envelope-o"></i> <span class="badge bg-green">6</span>
						</a>
							<ul id="menu1"
								class="dropdown-menu list-unstyled msg_list animated fadeInDown"
								role="menu">
								<li><a> <span class="image"><img
											src="images/img.jpg" alt="Profile Image" /></span> <span> <span>JohnSmith</span>
											<span class="time">3 mins ago</span>
									</span> <span class="message"> Film festivals used to be
											do-or-die moments for movie makers. They were where... </span>
								</a></li>
								<li><a> <span class="image"> <img
											src="images/img.jpg" alt="Profile Image" />
									</span> <span> <span>John Smith</span> <span class="time">3
												mins ago</span>
									</span> <span class="message"> Film festivals used to be
											do-or-die moments for movie makers. They were where... </span>
								</a></li>
								<li><a> <span class="image"> <img
											src="images/img.jpg" alt="Profile Image" />
									</span> <span> <span>John Smith</span> <span class="time">3
												mins ago</span>
									</span> <span class="message"> Film festivals used to be
											do-or-die moments for movie makers. They were where... </span>
								</a></li>
								<li><a> <span class="image"> <img
											src="images/img.jpg" alt="Profile Image" />
									</span> <span> <span>John Smith</span> <span class="time">3
												mins ago</span>
									</span> <span class="message"> Film festivals used to be
											do-or-die moments for movie makers. They were where... </span>
								</a></li>
								<li>
									<div class="text-center">
										<a> <strong>See All Alerts</strong> <i
											class="fa fa-angle-right"></i>
										</a>
									</div>
								</li>
							</ul></li>

					</ul>
					</nav>
				</div>

			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">

				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>修改APP最新版本信息</h3>
						</div>
					</div>
					<div class="clearfix"></div>

					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>历史版本列表</h2>
									
									<div class="x_content">
		<table border="1" align="center" width="1000" height="150">
			<tr>
				<th>软件名称</th>
				<th>版本号</th>
				<th>版本大小(单位M)</th>
				<th>发布状态</th>
				<th>apk文件下载</th>
				<th>最近更新时间</th>
			</tr>
			<tr>
				<th>软件名称</th>
				<th>版本号</th>
				<th>版本大小(单位M)</th>
				<th>发布状态</th>
				<th>apk文件下载</th>
				<th>最近更新时间</th>
			</tr>
			<tr>
				<th>软件名称</th>
				<th>版本号</th>
				<th>版本大小(单位M)</th>
				<th>发布状态</th>
				<th>apk文件下载</th>
				<th>最近更新时间</th>
			</tr>
			<tr>
				<th>软件名称</th>
				<th>版本号</th>
				<th>版本大小(单位M)</th>
				<th>发布状态</th>
				<th>apk文件下载</th>
				<th>最近更新时间</th>
			</tr>			
		</table>
	</div>     
									
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Settings 1</a></li>
												<li><a href="#">Settings 2</a></li>
											</ul></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">

									<form class="form-horizontal form-label-left" novalidate>

										<span class="section">修改最新版本信息</span>

										<div class="item form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-12"
												for="name">版本号<span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<input id="name" class="form-control col-md-7 col-xs-12"
													data-validate-length-range="6" data-validate-words="2"
													name="name" placeholder="请输入版本号" required="required"
													type="text">
											</div>
										</div>
										<div class="item form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-12"
												for="email">版本大小<span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<input type="text" id="email" name="email"
													required="required" placeholder="请输入版本大小，单位为MB"
													class="form-control col-md-7 col-xs-12">
											</div>
										</div>
										<div class="item form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-12"
												for="email">发布状态<span class="required">*</span><small>预发布</small>
											</label>
										</div>

										<div class="item form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-12"
												for="textarea">版本简介 <span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 col-xs-12">
												<textarea id="textarea" required="required" name="textarea"
													placeholder="请输入本版本的相关信息，本信息作为该版本的详细信息作为版本介绍。"
													class="form-control col-md-7 col-xs-12"></textarea>
											</div>
										</div>
										<div class="item form-group">
											<label class="control-label col-md-3 col-sm-3 col-xs-12"
												for="email">APK文件<span class="required">*</span>
											</label>
											<div class="col-md-6 col-sm-6 col-xs-12">
									
											
												<input type="file" id="file" name="file" >	
																							
											</div>
											
										</div>
										<div class="ln_solid"></div>
										<div class="form-group">
											<div class="col-md-6 col-md-offset-3">
												<button type="submit" class="btn btn-primary">返回</button>
												<button id="send" type="submit" class="btn btn-success">保存</button>
											</div>
										</div>
									</form>

								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- footer content -->
				<footer>
				<div class="">
					<p class="pull-right">
						Gentelella Alela! a Bootstrap 3 template by <a>Kimlabs</a>. | <span
							class="lead"> <i class="fa fa-paw"></i> Gentelella Alela!
						</span>
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
		<ul class="list-unstyled notifications clearfix"
			data-tabbed_notifications="notif-group">
		</ul>
		<div class="clearfix"></div>
		<div id="notif-group" class="tabbed_notifications"></div>
	</div>

	<script src="js/bootstrap.min.js"></script>

	<!-- chart js -->
	<script src="js/chartjs/chart.min.js"></script>
	<!-- bootstrap progress js -->
	<script src="js/progressbar/bootstrap-progressbar.min.js"></script>
	<script src="js/nicescroll/jquery.nicescroll.min.js"></script>
	<!-- icheck -->
	<script src="js/icheck/icheck.min.js"></script>

	<script src="js/custom.js"></script>
	<!-- form validation -->
	<script src="js/validator/validator.js"></script>
	<script>
		// initialize the validator function
		validator.message['date'] = 'not a real date';

		// validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
		$('form').on('blur',
				'input[required], input.optional, select.required',
				validator.checkField).on('change', 'select.required',
				validator.checkField).on('keypress',
				'input[required][pattern]', validator.keypress);

		$('.multi.required').on('keyup blur', 'input', function() {
			validator.checkField.apply($(this).siblings().last()[0]);
		});

		// bind the validation to the form submit event
		//$('#send').click('submit');//.prop('disabled', true);

		$('form').submit(function(e) {
			e.preventDefault();
			var submit = true;
			// evaluate the form using generic validaing
			if (!validator.checkAll($(this))) {
				submit = false;
			}

			if (submit)
				this.submit();
			return false;
		});

		/* FOR DEMO ONLY */
		$('#vfields').change(function() {
			$('form').toggleClass('mode2');
		}).prop('checked', false);

		$('#alerts').change(function() {
			validator.defaults.alerts = (this.checked) ? false : true;
			if (this.checked)
				$('form .alert').remove();
		}).prop('checked', false);
	</script>

</body>
</html>