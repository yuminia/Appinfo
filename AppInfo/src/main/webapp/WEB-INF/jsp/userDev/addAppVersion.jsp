<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<div class="">
	<div class="page-title">
		<div class="title_left">
			<h3>新增APP版本信息</h3>
		</div>
	</div>
	<div class="clearfix"></div>

	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>历史版本列表</h2>

					<div class="x_content">
						<table border="1" align="center" width="1000" height="180">
							<tr>
								<th>软件名称</th>
								<th>版本号</th>
								<th>版本大小(单位M)</th>
								<th>发布状态</th>
								<th>apk文件下载</th>
								<th>最近更新时间</th>
							</tr>
							<c:forEach items="${appVersionList }" var="item">
								<tr>
									<td>${appInfo.softwareName }</td>
									<td>${item.versionNo }</td>
									<td>${item.versionSize }</td>
									<td>${item.publishStatus }</td>
									<td>${item.apkLocPath }</td>
									<td>${item.modifyDate }</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<form class="form-horizontal form-label-left" novalidate method="post"  enctype="multipart/form-data" 
						action="javascript:;" id="addAppVersionSubmit" >
						<span class="section">新增版本信息</span>
						<input type="hidden" name="appId" value="${appInfo.id }">
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12" for="versionNo">版本号<span class="required">*</span></label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="name" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="versionNo" placeholder="请输入版本号" required="required"
									type="text">
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="versionSize">版本大小<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="text" id="email" name="versionSize" required="required"
									placeholder="请输入版本大小，单位为MB"
									class="form-control col-md-7 col-xs-12">
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="publishStatus">发布状态<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="hidden" name="publishStatus" value="1">
								<input id="publishStatus" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2" 
									value="预发布" required="required" readonly 
									type="text">
							</div>
						</div>

						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="versionInfo">版本简介 <span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<textarea id="versionInfo" required="required" name="versionInfo"
									placeholder="请输入本版本的相关信息，本信息作为该版本的详细信息作为版本介绍。"
									class="form-control col-md-7 col-xs-12"></textarea>
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="file_apkLocPath">APK文件<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="file" id="file_apkLocPath" name="file_apkLocPath" multiple="multiple">
							</div>

						</div>
						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-6 col-md-offset-3">
								<a href="javascript:;pageTo('appInfo/AppList');" class="btn btn-primary">返回</a>
<!-- 								<button type="submit" class="btn btn-primary">返回</button> -->
								<button id="send" type="submit" class="btn btn-success">添加</button>
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</div>


<script>
	//addAppVersionSubmit 表单提交
	$("#addAppVersionSubmit").submit(function(){
		//var data = $(this).serialize();
		var data = new FormData(document.getElementById("addAppVersionSubmit"));
		var mark = true;
		$("input:required").each(function(index,item){
			var text = $(item).val();
			if(text== null || text == '' ){
				mark = false;
			}
		});
		if(mark){
			$.ajax({
				url:"<%=request.getContextPath() %>/app/version/addAppVersionSubmit",
				data:data,
				type:"post",
				processData:false,
				contentType:false,
				success:function(data){
					if(data == true){
						alert("添加成功");
						$("#contentDiv").load("${pageContext.request.contextPath}/app/appInfo/AppList",
		        				{"pageIndex":1});
					}else{
						alert(data);
					}
				},
				error:function(err){
					console.log(err)
					alert(err["responseText"]);
				}
			});
		}else{
			alert("请正确填写...再提交");
		}
		
	});
</script>

</body>
</html>