<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="css/custom.css" rel="stylesheet">
    <link href="css/icheck/flat/green.css" rel="stylesheet">


    <script src="js/jquery.min.js"></script>
</head>

<body style="background:#F7F7F7;">
    
    <div class="">
        <a class="hiddenanchor" id="toregister"></a>
        <a class="hiddenanchor" id="tologin"></a>

        <div id="wrapper">
            <div id="login" class="animate form">
                <section class="login_content">
                    <form>
                        <h1>登 录</h1>
                        <div>
                            <input type="text" class="form-control" placeholder="Username" required="required" name="userCode"/>
                        </div>
                        <div>
                            <input type="password" class="form-control" placeholder="Password" required="required" name="userPassWord"/>
                        </div>
                        <div>
                            <a class="btn btn-default submit" href="${pageContext.request.contextPath}/doLogin">登入</a>
                            <a class="reset_pass" href="#">忘记密码?</a>
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">

                            <p class="change_link">还未创建账号?
                                <a href="#toregister" class="to_register"> 注册 </a>
                            </p>
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
            <div id="register" class="animate form">
                <section class="login_content">
                    <form>
                        <h1>注 册</h1>
                        <div>
                            <input type="text" class="form-control" placeholder="Username" required="required" />
                        </div>
                        <div>
                            <input type="email" class="form-control" placeholder="Email" required="required" />
                        </div>
                        <div>
                            <input type="password" class="form-control" placeholder="Password" required="required" />
                        </div>
                        <div>
                        	<input type="hidden" name="DevOrBackend" value="${DevOrBackend}"/>
                            <a class="btn btn-default submit" href="index.html">提交</a>
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">

                            <p class="change_link">已有账号 ?
                                <a href="#tologin" class="to_register"> 登录 </a>
                            </p>
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

</body>
</html>