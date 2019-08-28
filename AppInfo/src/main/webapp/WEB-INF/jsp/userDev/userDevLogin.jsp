<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gentallela Alela! | </title>
    <!-- Bootstrap core CSS -->
<!--     http://localhost:8080/AppInfo/static/gentelella-master/production/css/animate.min.css -->
    <link href="<%=request.getContextPath() %>/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/static/fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/static/css/animate.min.css" rel="stylesheet">
    <!-- Custom styling plus plugins -->
    <link href="<%=request.getContextPath() %>/static/css/custom.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/static/css/icheck/flat/green.css" rel="stylesheet">
    <script src="<%=request.getContextPath() %>/static/js/jquery.min.js"></script>
</head>

<body style="background:#F7F7F7;">
    <div class="">
        <a class="hiddenanchor" id="toregister"></a>
        <a class="hiddenanchor" id="tologin"></a>

        <div id="wrapper">
            <div id="login" class="animate form">
                <section class="login_content">
                    <form action="<%=request.getContextPath() %>/app/userDev/userDevLoginSubmit" method="post">
                        <h1>UserDev Login Form</h1>
                        <div>
                            <input type="text" class="form-control" placeholder="DevCode" name="devCode" required="" />
                        </div>
                        <div>
                            <input type="password" class="form-control" placeholder="Password" name="devPassword" required="" />
                        </div>
                        <div>
<!--                             <a class="btn btn-default submit" href="index.html">Log in</a> -->
                            <input type="submit" class="btn btn-default submit" value="Log in"/>
                            <a class="reset_pass">Lost your password?</a>
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">
                            <p class="change_link">New to site?
<!--                                 <a href="#toregister" class="to_register"> Create Account </a> -->
                                <a href="#toregister" class="to_register"> Register 注册 </a>
                            </p>
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <h1><i class="fa fa-paw" style="font-size: 26px;"></i> Gentelella Alela!</h1>
                                <p>©2015 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
                            </div>
                        </div>
                    </form>
                    <!-- form -->
                </section>
                <!-- content -->
            </div>
            <div id="register" class="animate form">
                <section class="login_content">
                    <form action="<%=request.getContextPath() %>/app/userDev/userDevRegisterSubmit" method="post">
                        <h1>Register 注册</h1>
                        <div style="position: relative;">
                        	<input id="registerDevCode" type="text" class="form-control" placeholder="devCode" name="devCode" required="" />
                        	<span id="checkDevCodeSpan"
                        	 style="position: absolute;right:0px;top:8px;" ></span>
                        </div>
                        <div><input type="text" class="form-control" placeholder="devName" name="devName" required="" /></div>
                        <div><input type="password" class="form-control" placeholder="Password" name="devPassword" required="" /></div>
                        <div><input type="email" class="form-control" placeholder="devEmail" name="devEmail" required="" /></div>
                        <div><input type="text" class="form-control" placeholder="devInfo" name="devInfo" required="" /></div>
<!--                         <div><a class="btn btn-default submit" href="index.html">Submit</a></div> -->
                        <div><input type="submit" class="btn btn-default submit" value="Submit"/></div>
                        <div class="clearfix"></div>
                        
                        <div class="separator">
                            <p class="change_link">Already a member ?
                                <a href="#tologin" class="to_register"> Log in </a>
                            </p>
                            <div class="clearfix"></div><br />
                            <div>
                                <h1><i class="fa fa-paw" style="font-size: 26px;"></i> Gentelella Alela!</h1>
                                <p>©2015 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
                            </div>
                        </div>
                    </form>
                    <!-- form -->
                </section>
                <!-- content -->
            </div>
        </div>
    </div>
	<script type="text/javascript">
		//失去焦点 检查用户名
		$("#registerDevCode").blur(function(){
			var devCode = $("#registerDevCode").val();
			if( devCode != null && devCode.trim() != '' ){
				$.ajax({
					url:"<%=request.getContextPath() %>/app/userDev/checkDevCode",
					data:{"devCode":devCode},
					success:function(data){
						if( data == true ){//存在
							$("#checkDevCodeSpan").css("color","red").html("用户名已存在,请重新输入");
							return true;
						}else if( data == false ){
							$("#checkDevCodeSpan").css("color","green").html("用户名可注册");
							return false;
						}
					}
				})
			}
		});
		//获取焦点 清空提示
		$("#registerDevCode").focus(function(){
			$("#checkDevCodeSpan").html("");
		});
	</script>
</body>

</html>