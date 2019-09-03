<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>App开发平台</title>
</head>
<body>
	<div class="animate form">
                <section class="login_content">
                	<form id="updAdmin" class="form-horizontal form-label-left" novalidate 
                		>
                        <h1>管理员资料修改</h1>
                        <div class="item form-group" style="position: relative;">
                        	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="userCode">用户编号 <span class="required">*</span></label>
                        	<div class="col-md-6 col-sm-6 col-xs-12">
	                        	<input id="userCode"  type="text" class="form-control" name="userCode" value="${userBackend.userCode }" />
	                        	<span  style="position: absolute;right:50px;top:8px;" ></span>
                        	</div>
                        </div>
                        
                        <div class="item form-group">
                             <label class="control-label col-md-3 col-sm-3 col-xs-12" for="userName">用户名 <span class="required">*</span></label>
                             <div class="col-md-6 col-sm-6 col-xs-12">
                                 <input id="userName" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" 
                                 data-validate-words="2" name="userName" value="${userBackend.userName }" required type="text">
                             </div>
                         </div>
                         	<input type="hidden" name="id" value="${userBackend.id}">
                        	<input type="hidden" name="modifyBy" value="${sessionScope.loginUserBackend.id}">
                        <div><input type="submit" class="btn btn-warning" value="确认修改"/><a id="back" href="javascript:;" class="btn btn-primary">返回</a></div>
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
	    $("#updAdmin").submit(function (){
	    	//action="${pageContext.request.contextPath}/app/Backend/admin/doUpdAdmin"
			$.ajax({
	            type: "post",
	            url:'${pageContext.request.contextPath}/app/Backend/admin/doUpdAdmin',
	            data:$("#updAdmin").serialize(),
	            success: function (result) {
	            	$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/adminList");
	              },
	            error: function () {
	            }
	        })
		});
		$("#back").click(function (){
			$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/adminList");
		});
	</script>
</body>
</html>