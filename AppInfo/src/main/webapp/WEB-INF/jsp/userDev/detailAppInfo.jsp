<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<div class="">
	<div class="page-title">
		<div class="title_left">
			<h3>查看APP基础信息</h3>
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
							<label class="control-label col-md-3 col-sm-3 col-xs-12" >软件名称 </label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								${appInfo.softwareName }
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12" >APK名称 </label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								${appInfo.APKName }
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12" >支持ROM</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								${appInfo.supportROM }
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12" >界面语言 </label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								${appInfo.interfaceLanguage }
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12" >软件大小</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								${appInfo.softwareSize }
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12" >下载次数</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								${appInfo.downloads }
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12" >所属平台</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<c:forEach items="${flatformList }" var="item">
									<c:if test="${appInfo.flatformId == item.id }">
										${item.flatformName }
									</c:if>
								</c:forEach>
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12" >一级分类</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<c:forEach items="${categoryList1 }" var="item">
									<c:if test="${appInfo.categoryLevel1 == item.id }">
										${item.categoryName }
									</c:if>
								</c:forEach>
								
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12" >二级分类</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<c:forEach items="${categoryList2 }" var="item">
									<c:if test="${appInfo.categoryLevel2 == item.id }">
										${item.categoryName }
									</c:if>
								</c:forEach>
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12" >三级分类</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<c:forEach items="${categoryList3 }" var="item">
									<c:if test="${appInfo.categoryLevel3 == item.id }">
										${item.categoryName }
									</c:if>
								</c:forEach>
							</div>
						</div>
						
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12" >APP状态 </label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="hidden" name="status" value="${appInfo.status }">
								<!--/**int(30) APP状态<br>
								 * 1 待审核<br>* 2 审核未通过<br>* 3 审核通过<br>* 4 已上架<br>* 5 已下架*/-->
								<c:if test="${appInfo.status == 1 }">
									待审核
								</c:if>
								<c:if test="${appInfo.status == 2 }">
									审核未通过
								</c:if>
								<c:if test="${appInfo.status == 3 }">
									审核通过
								</c:if>
								<c:if test="${appInfo.status == 4 }">
									已上架
								</c:if>
								<c:if test="${appInfo.status == 5 }">
									已下架
								</c:if>
							</div>
						</div>

						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12" >APP简介</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<textarea id="appInfo" required="required" name="appInfo" readonly 
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
						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-6 col-md-offset-3">
								<a href="javascript:;pageTo('appInfo/AppList');" class="btn btn-primary">返回</a>
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</div>


</body>
</html>