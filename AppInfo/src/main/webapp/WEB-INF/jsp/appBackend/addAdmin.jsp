<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>App开发平台</title>
</head>
<body>
	<div class="x_content">
					<form class="form-horizontal form-label-left" novalidate method="post"  enctype="multipart/form-data" 
						action="${pageContext.request.contextPath}/app/Backend/admin/doAddAdmin"  >
						<span class="section">添加管理员用户</span>
						<input type="hidden" name="createdBy" value="${sessionScope.loginUserBackend.id}">
						<input type="hidden" name="userType" value="2">
						<div class="item form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12" for="userCode">用户编号<span class="required">*</span></label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input  class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="userCode" placeholder="用户编号" required="required"
									type="text">
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="versionSize">用户名<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text"  name="userName" required="required"
									placeholder="用户名"
									class="form-control col-md-7 col-xs-12">
							</div>
						</div>
						
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="versionSize">密码<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="password"  name="userPassword" required="required"
									placeholder="密码"
									class="form-control col-md-7 col-xs-12">
							</div>
						</div>
						
						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-6 col-md-offset-3">
								<a id="back" href="javascript:;" class="btn btn-primary">返回</a>
								<button type="submit" class="btn btn-success">添加</button>
							</div>
						</div>
					</form>

				</div>
	<script type="text/javascript">
		$("#back").click(function (){
			$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/adminList");
		});
	</script>
</body>
</html>