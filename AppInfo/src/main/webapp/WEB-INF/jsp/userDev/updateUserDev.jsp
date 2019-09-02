<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

            <div class="animate form">
                <section class="login_content">
                	<form id="updateUserDev" class="form-horizontal form-label-left" novalidate 
                		action="javascrpt:;" method="post">
                        <h1>UserDev 资料修改</h1>
                        <div class="item form-group" style="position: relative;">
                        	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="devCode">用户编号 <span class="required">*</span></label>
                        	<div class="col-md-6 col-sm-6 col-xs-12">
	                        	<input id="updateDevCode" type="text" class="form-control" name="devCode" value="${loginUserDev.devCode }" />
	                        	<span id="checkDevCodeSpan" style="position: absolute;right:50px;top:8px;" ></span>
                        	</div>
                        </div>
                        
                        <div class="item form-group">
                             <label class="control-label col-md-3 col-sm-3 col-xs-12" for="devName">登录名 <span class="required">*</span></label>
                             <div class="col-md-6 col-sm-6 col-xs-12">
                                 <input id="devName" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="devName" value="${loginUserDev.devName }" required type="text">
                             </div>
                         </div>
                        <div class="item form-group">
                             <label class="control-label col-md-3 col-sm-3 col-xs-12" for="devEmail">邮箱 <span class="required">*</span>
                             </label>
                             <div class="col-md-6 col-sm-6 col-xs-12">
                                 <input id="devEmail" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="devEmail" value="${loginUserDev.devEmail }" required type="text">
                             </div>
                         </div>
                        <div class="item form-group">
                             <label class="control-label col-md-3 col-sm-3 col-xs-12" for="devInfo">开发者信息<span class="required">*</span>
                             </label>
                             <div class="col-md-6 col-sm-6 col-xs-12">
<!--                              	 <textarea id="devInfo" required="required" name="devInfo"  -->
<%-- 									class="form-control col-md-7 col-xs-12">${loginUserDev.devInfo }</textarea> --%>
								<input id="devInfo" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="devInfo" value="${loginUserDev.devInfo }" required type="text">
                             </div>
                        </div>
                        
                        <div><input type="submit" class="btn btn-lg btn-warning submit" value="确认修改"/></div>
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
    <script type="text/javascript">
	  	//保存用户编码  是否存在
	    var checkDevCodeSpan;
    
        //修改资料  异步提交
		$("#updateUserDev").submit(function(){
			var devCode = $("input[name='devCode']").val();
			var devName = $("input[name='devName']").val();
			var devEmail = $("input[name='devEmail']").val();
			var devInfo = $("input[name='devInfo']").val();
// 			var devInfo = $("#devInfo").html();//使用textarea获取的数据没有更新 , 所以改成了input
// 			var devInfo = document.getElementById("devInfo").innerHTML;
			if(!checkDevCodeSpan){
				$.ajax({
					url:"<%=request.getContextPath() %>/app/userDev/updateUserDevSubmit",
					data:{
						"devCode":devCode,
						"devName":devName,
						"devEmail":devEmail,
						"devInfo":devInfo
					},
					type:"post",
					success:function(data){
						if(data){
							alert("恭喜你,资料修改成功");
							$("body").load("${pageContext.request.contextPath}/app/userDev/main");
						}else{
							alert("数据异常,资料修改失败!");
						}
					}
				});
			}else{
				alert("请检查用编号,不能使用已存在的编号.");
			}
			
		});
        
		//失去焦点 检查用户名
		$("#updateDevCode").blur(function(){
			var devCode = $("#updateDevCode").val();
			if( devCode != null && devCode.trim() != '' ){
				if(devCode != '${loginUserDev.devCode}'){
					$.ajax({
						url:"<%=request.getContextPath() %>/app/userDev/checkDevCode",
						data:{"devCode":devCode},
						success:function(data){
							if( data == true ){//存在
								checkDevCodeSpan = true;
								$("#checkDevCodeSpan").css("color","red").html("用户编号已存在,请重新输入");
								return true;
							}else if( data == false ){
								checkDevCodeSpan = false;
								$("#checkDevCodeSpan").css("color","green").html("用户编号可使用");
								return false;
							}
						}
					})
				}
			}
		});
		//获取焦点 清空提示
		$("#updateDevCode").focus(function(){
			$("#checkDevCodeSpan").html("");
		});
    </script>
</html>