<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AppInfo</title>
<!-- Bootstrap core CSS -->
<link href="<%=request.getContextPath()%>/static/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/static/fonts/css/font-awesome.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/static/css/animate.min.css"
	rel="stylesheet">
<!-- Custom styling plus plugins -->
<link href="<%=request.getContextPath()%>/static/css/custom.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/static/css/icheck/flat/green.css"
	rel="stylesheet">
<script src="<%=request.getContextPath()%>/static/js/jquery.min.js"></script>
</head>
<body class="nav-md">

	<div class="x_panel">
                                <div class="x_title">
                                    <h2>app基础信息 <small>请审核app信息！</small></h2>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <form class="form-horizontal form-label-left input_mask">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">软件名称<span class="required">*</span></label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="${AppInfo.softwareName }">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">APK名称<span class="required">*</span></label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="${AppInfo.APKName }">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">支持ROM<span class="required">*</span></label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="${AppInfo.supportROM }">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">界面语言<span class="required">*</span></label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="${AppInfo.interfaceLanguage }">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">软件大小（M）<span class="required">*</span></label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="${AppInfo.softwareSize }">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">下载次数<span class="required">*</span></label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="${AppInfo.downloads }">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">所属平台<span class="required">*</span></label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="${AppInfo.flatformName }">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">所属分类<span class="required">*</span></label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="${AppInfo.categoryName1 } - ${AppInfo.categoryName2 } - ${AppInfo.categoryName3 }">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">APP状态<span class="required">*</span></label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                            	<c:if test="${AppInfo.status == 1 }">
                                                	<td class="a-right a-right ">待审核</td>
                                                </c:if>
												<c:if test="${AppInfo.status == 2 }">
                                                	<td class="a-right a-right ">审核未通过</td>
                                                </c:if>
												<c:if test="${AppInfo.status == 3 }">
                                                	<td class="a-right a-right ">审核通过</td>
                                                </c:if>
												<c:if test="${AppInfo.status == 4 }">
                                                	<td class="a-right a-right ">已上架</td>
                                                </c:if>
												<c:if test="${AppInfo.status == 5 }">
                                                	<td class="a-right a-right ">已下架</td>
                                                </c:if>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">应用简介<span class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="${AppInfo.appInfo }">
                                            </div>
                                        </div>
                                         <div class="form-group">
                                         	<label class="control-label col-md-3 col-sm-3 col-xs-12">APP图标<span class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                            	<img alt="未上传图片" src="${AppInfo.logoLocPath }/${AppInfo.logoPicPath}">
                                            </div>
                                         </div>
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                                            	<a  class="btn btn-success" href="javascript:doAudit(${AppInfo.id },3);">审核通过</a>
                                            	<a  class="btn btn-warning" href="javascript:doAudit(${AppInfo.id },2);">审核不通过</a>
                                                <a  class="btn btn-primary" href="${pageContext.request.contextPath}/app/Backend/admin/main">返回</a>
                                            </div>
                                        </div>

                                    </form>
                                </div>
         </div>
					
		<div class="x_panel">
                                <div class="x_title">
                                    <h2>app基础信息 <small>请审核app信息！</small></h2>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <br />
                                    <form class="form-horizontal form-label-left input_mask">

                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">版本号<span class="required">*</span></label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="${AppVersion.versionNo }">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">版本大小<span class="required">*</span></label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="${AppVersion.versionSize }">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">发布状态<span class="required">*</span></label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                            	 <c:if test="${AppVersion.publishStatus == 1 }">
                                                	<p class="a-right a-right ">待发布</p>
                                                </c:if>
												<c:if test="${AppVersion.publishStatus == 2 }">
                                                	<p class="a-right a-right ">已发布</p>
                                                </c:if>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">版本简介<span class="required">*</span></label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                                <input type="text" class="form-control" readonly="readonly" placeholder="${AppVersion.versionInfo }">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-3 col-sm-3 col-xs-12">APK文件<span class="required">*</span>
                                            </label>
                                            <div class="col-md-9 col-sm-9 col-xs-12">
                                            	<p class="a-right a-right ">${AppVersion.apkFileName}</p><a href="javascript:;">下载</a>
                                            </div>
                                        </div>
                                        <div class="ln_solid"></div>

                                    </form>
                                </div>
            </div>

<script type="text/javascript">
	function doAudit(id,status){
		$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/doAudit",{"id":id,"status":status});
	}
</script>
</body>
</html>