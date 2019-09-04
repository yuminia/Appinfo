<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<div id="contentDiv">
		<div class="x_panel">
			<div class="x_title">
				<h2>
					APP 信息管理维护 <i class="fa fa-user"></i><small>${loginUserDev.devName}
						- 您可以通过搜索或者其他的筛选项对APP的信息进行修改、删除等管理操作。^_^</small>
				</h2>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<div class="row">
	
					<form class="form-horizontal form-label-left" id="searchCriteria"
						action="javascript:;">
						<div class="col-md-3 col-sm-12 col-xs-12 form-inline">
							<label for="ex1">软件名称 </label> <input name="softwareName"
								type="text" id="ex1" class="form-control" style="width: 117px;"><br>
	
							<label>一级分类 </label> <select class="form-control"
								name="categoryLevel1" id="categoryLevel1">
								<option value="0">-- 请选择 --</option>
								<c:forEach items="${categoryList1 }" var="item">
									<option value="${item.id }">${item.categoryName }</option>
								</c:forEach>
							</select>
						</div>
	
						<!--/**int(30) APP状态<br>
													 * 1 待审核<br>* 2 审核未通过<br>* 3 审核通过<br>* 4 已上架<br>* 5 已下架*/-->
						<div class="col-md-3 col-sm-12 col-xs-12 form-inline">
							<label>APP状态 </label> <select class="form-control" id="status">
								<option value="0">-- 请选择 --</option>
								<option value="1">待审核</option>
								<option value="2">审核未通过</option>
								<option value="3">审核通过</option>
								<option value="4">已上架</option>
								<option value="5">已下架</option>
							</select><br> <label>二级分类 </label> <select class="form-control"
								name="categoryLevel2" id="categoryLevel2">
								<option value="0">-- 请选择 --</option>
							</select>
						</div>
	
						<div class="col-md-3 col-sm-12 col-xs-12 form-inline">
							<label>所属平台 </label> <select class="form-control"
								name="flatformId" id="flatformId">
								<option value="0">-- 请选择 --</option>
								<c:forEach items="${flatformList }" var="item">
									<option value="${item.id }">${item.flatformName }</option>
								</c:forEach>
							</select><br> <label>三级分类 </label> <select class="form-control"
								name="categoryLevel3" id="categoryLevel3">
								<option value="0">-- 请选择 --</option>
							</select>
						</div>
						<br>
					</form>
	
				</div>
				<br>
	
	
				<%--<a href="javascript:pageAppInfoList(${ph.currentPage-1});" class="btn btn-info btn-sm" > --%>
				<a href="javascript:;pageAppInfoList();" class="btn btn-info btn-sm">
					查 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;询 </a>
	
				<!--                         <div class="title_right"></div> -->
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel" style="height: 600px;">
					<div class="x_title">
						<a class="btn btn-success btn-sm" href="javascript:;pageTo('appInfo/addAppInfo');">新增App基础信息</a>
					</div>
					
					<%@include file="AppInfoLimit.jsp"%>
					
					
				</div>
			</div>
		</div>
	</div>

<script type="text/javascript">
	//确认 删除
	function doDelConfirm(mesg){
		return  confirm(mesg);
	};


	//AppList 跳转
	function pageAppInfoList(pageIndex){
	//		var data = $("#searchCriteria").serialize();//这里获取的是text 不是 value
		var softwareName = $("input[name='softwareName']").val();
		var categoryLevel1 = $("#categoryLevel1 option:selected").val();
		var categoryLevel2 = $("#categoryLevel2 option:selected").val();
		var categoryLevel3 = $("#categoryLevel3 option:selected").val();
		var status = $("#status option:selected").val();
		var flatformId = $("#flatformId option:selected").val();
		$("#AppInfoTable").load("${pageContext.request.contextPath}/app/appInfo/appInfoTable",
			{"softwareName":softwareName,"categoryLevel1":categoryLevel1,
			"categoryLevel2":categoryLevel2,"categoryLevel3":categoryLevel3,
			"status":status,"flatformId":flatformId,"pageIndex":pageIndex});
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
</html>