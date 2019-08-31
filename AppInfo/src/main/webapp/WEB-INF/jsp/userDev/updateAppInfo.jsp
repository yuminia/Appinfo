<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<div class="">
	<div class="page-title">
		<div class="title_left">
			<h3>修改APP基础信息</h3>
		</div>
	</div>
	<div class="clearfix"></div>

	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				
				<div class="x_content">

					<form class="form-horizontal form-label-left" novalidate method="post"  enctype="multipart/form-data" 
						action="javascript:;" id="updateAppInfo">
						<div class="item form-group">
							<input type="hidden" name="id" value="${appInfo.id }">
							<input type="hidden" name="createdBy" value="${appInfo.createdBy }">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="softwareName">软件名称<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="softwareName" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="softwareName" type="text" value="${appInfo.softwareName }">
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="APKName">APK名称<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12" style="position: relative;">
								<input id="APKName" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="APKName" required type="text" value="${appInfo.APKName }">
								<span id="checkAPKNameSpan" style="position: absolute;right:20px;top:8px;"></span>
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="supportROM">支持ROM<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="supportROM" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="supportROM" value="${appInfo.supportROM }" required type="text">
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="interfaceLanguage">界面语言<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="interfaceLanguage" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="interfaceLanguage" value="${appInfo.interfaceLanguage }" required type="text">
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="softwareSize">软件大小<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="softwareSize" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="softwareSize" value="${appInfo.softwareSize }" required type="number">
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="downloads">下载次数<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="downloads" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="downloads" value="${appInfo.downloads }" type="number" readonly>
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="flatformId">所属平台<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<select id="flatformId" class="form-control col-md-7 col-xs-12" name="flatformId">
									<c:forEach items="${flatformList }" var="item">
										<c:if test="${appInfo.flatformId == item.id }">
											<option value="${item.id }" selected>${item.flatformName }</option>
										</c:if>
										<c:if test="${appInfo.flatformId != item.id }">
											<option value="${item.id }">${item.flatformName }</option>
										</c:if>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="categoryLevel1">一级分类<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<select id="categoryLevel1" class="form-control col-md-7 col-xs-12" name="categoryLevel1">
									<c:forEach items="${categoryList1 }" var="item">
										<c:if test="${appInfo.categoryLevel1 == item.id }">
											<option value="${item.id }" selected>${item.categoryName }</option>
										</c:if>
										<c:if test="${appInfo.categoryLevel1 != item.id }">
											<option value="${item.id }">${item.categoryName }</option>
										</c:if>
									</c:forEach>
								</select>
								
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="categoryLevel2">二级分类<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<select id="categoryLevel2" class="form-control col-md-7 col-xs-12" name="categoryLevel2">
									<c:forEach items="${categoryList2 }" var="item">
										<c:if test="${appInfo.categoryLevel2 == item.id }">
											<option value="${item.id }" selected>${item.categoryName }</option>
										</c:if>
										<c:if test="${appInfo.categoryLevel2 != item.id }">
											<option value="${item.id }">${item.categoryName }</option>
										</c:if>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="categoryLevel3">三级分类<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<select id="categoryLevel3" class="form-control col-md-7 col-xs-12" name="categoryLevel3">
									<c:forEach items="${categoryList3 }" var="item">
										<c:if test="${appInfo.categoryLevel3 == item.id }">
											<option value="${item.id }" selected>${item.categoryName }</option>
										</c:if>
										<c:if test="${appInfo.categoryLevel3 != item.id }">
											<option value="${item.id }">${item.categoryName }</option>
										</c:if>
									</c:forEach>
								</select>
							</div>
						</div>
						
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="status">APP状态<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="hidden" name="status" value="${appInfo.status }">
								<!--/**int(30) APP状态<br>
								 * 1 待审核<br>* 2 审核未通过<br>* 3 审核通过<br>* 4 已上架<br>* 5 已下架*/-->
			
								<c:if test="${appInfo.status == 1 }">
									<input class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2"
									value="待审核" readonly>
								</c:if>
								<c:if test="${appInfo.status == 2 }">
									<input class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2"
									value="审核未通过" readonly>
								</c:if>
								<c:if test="${appInfo.status == 3 }">
									<input class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2"
									value="审核通过" readonly>
								</c:if>
								<c:if test="${appInfo.status == 4 }">
									<input class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2"
									value="已上架" readonly>
								</c:if>
								<c:if test="${appInfo.status == 5 }">
									<input class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2"
									value="已下架" readonly>
								</c:if>
							</div>
						</div>

						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="appInfo">APP简介 <span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<textarea id="appInfo" required="required" name="appInfo"  
									class="form-control col-md-7 col-xs-12">${appInfo.appInfo }</textarea>
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12" >LOGO图片 <span class="required">*</span></label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="hidden" name="logoPicPath" value="${appInfo.logoPicPath }">
								<img alt="" src="<%=request.getContextPath() %>/upload/${appInfo.logoPicPath}" width="100px" height="70px" >
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="email">修改LOGO图片<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="file" id="file_logoPicPath" name="file_logoPicPath">
							</div>

						</div>
						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-6 col-md-offset-3">
								<a href="javascript:;pageTo('appInfo/AppList');" class="btn btn-primary">返回</a>
								<button id="send" type="submit" class="btn btn-success">保存</button>
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</div>


<script>
	//APK 失去焦点 检查提示
	$("#APKName").blur(function(){
		var APKName = $("#APKName").val();
		if( APKName != null && APKName.trim() != '' ){
			$.ajax({
				url:"<%=request.getContextPath() %>/app/appInfo/checkAPKName",
				data:{"APKName":APKName},
				success:function(data){
					if( data == true ){//存在
						$("#checkAPKNameSpan").css("color","red").html("APK名已存在,请重新输入");
						return true;
					}else if( data == false ){
						$("#checkAPKNameSpan").css("color","green").html("APK名可注册");
						return false;
					}
				}
			});
		}
	});
	//获取焦点 清空提示
	$("#APKName").focus(function(){
		$("#checkAPKNameSpan").text("");
	});
	
	
	
	//updateAppInfoSubmit 表单提交
	$("#updateAppInfo").submit(function(){
		//var data = $(this).serialize();
		var data = new FormData(document.getElementById("updateAppInfo"));
		var mark = true;
		$("input:required").each(function(index,item){
			var text = $(item).val();
			if(text== null || text == '' ){
				mark = false;
			}
		});
		if(mark){
			$.ajax({
				url:"<%=request.getContextPath() %>/app/appInfo/updateAppInfoSubmit",
				data:data,
				type:"post",
				processData:false,
				contentType:false,
				success:function(data){
					if(data == true){
						alert("修改成功");
						$("#contentDiv").load("${pageContext.request.contextPath}/app/appInfo/AppList",
		        				{"pageIndex":1});
					}else{
						alert(data);
					}
				},
				error:function(err){
					console.log(err);
					alert(err["responseText"])
				}
			});
		}else{
			alert("请正确填写...再提交修改")
		}
		
	})
	
	
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
					$("#categoryLevel2").html(html);
					$("#categoryLevel3").html("<option value='0'>-- 请选择 --</option>");
				}else{
					$("#categoryLevel2").html("<option value='0'>-- 请选择 --</option>");
					$("#categoryLevel3").html("<option value='0'>-- 请选择 --</option>");
				}
				
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
					$("#categoryLevel3").html(html);
				}else{
					$("#categoryLevel3").html("<option value='0'>-- 请选择 --</option>");
				}
			}
		});
	});
	
	
	
	
</script>

</body>
</html>