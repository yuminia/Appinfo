<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>App开发平台</title>
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/animate.min.css" rel="stylesheet">
    <!-- Custom styling plus plugins -->
    <link href="${pageContext.request.contextPath}/static/css/custom.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/icheck/flat/green.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
</head>
<body style="background:#F7F7F7;">
    
    <div class="">
        <a class="hiddenanchor" id="toregister"></a>
        <a class="hiddenanchor" id="tologin"></a>

        <div id="wrapper">
            <div id="login" class="animate form">
                <section class="login_content">
                    <form>
                        <h1>欢迎使用APP开发</h1>
                        <div>
                            <a id="Dev" class="btn btn-default submit" href="javascript:;">登录app开发者平台</a>
                        </div>
                        <br />
                        <br />
                        <div>
                            <a id="Backend" class="btn btn-default submit" href="javascript:;">登录后台管理者平台</a>
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <h1><i class="fa fa-paw" style="font-size: 26px;"></i> App开发平台</h1>
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
	$("#Dev").click(function(){
		$("body").load("${pageContext.request.contextPath}/app/login","DevOrBackend="+'Dev');
		});
	$("#Backend").click(function(){
		$("body").load("${pageContext.request.contextPath}/app/login","DevOrBackend="+'Backend');
		});
</script>
</body>
</html>