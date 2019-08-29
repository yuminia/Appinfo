<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="">
                    <div class="page-title">
                        <div class="title_left">
                            <h3>App列表</h3>
                        </div>

                        <div class="title_right">
                            <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                <div class="input-group">
                                    <p  class="form-control">注    销    ——→</p>
                                    <span class="input-group-btn">
                            <button id="logout" class="btn btn-default" type="button">登 出!</button>
                        </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="row">

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel" style="height:600px;">
                                <div class="x_title">
                                    <a class="btn btn-success btn-sm" href="#">新增App基础信息</a>
                                </div>
                            	
                            	<div class="x_content">
                                    <table id="example" class="table table-striped responsive-utilities jambo_table">
                                        <thead>
                                            <tr class="headings">
                                                <th>软件名称 </th>
                                                <th>APK名称</th>
                                                <th>软件大小(单位:M) </th>
                                                <th>所属平台 </th>
                                                <th>所属分类(一级分类/二级分类/三级分类) </th>
                                                <th>状态 </th>
                                                <th>下载次数 </th>
                                                <th>最新版本 </th>
                                                <th class=" no-link last"><span class="nobr">操作</span>
                                                </th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                        	<c:forEach items="${requestScope.appList}" var="appInfo">
                                            <tr class="even pointer">
                                                <td class=" "><c:out value="${appInfo.softwareName}" default="暂无数据"/></td>
                                                <td class=" "><c:out value="${appInfo.APKName}" default="暂无数据"/></td>
                                                <td class=" "><c:out value="${appInfo.softwareSize}" default="暂无数据"/></td>
                                                <td class=" "><c:out value="${appInfo.flatformId}" default="暂无数据"/></td>
                                                <td class=" "><c:out value="${appInfo.categoryLevel1}'->'${appInfo.categoryLevel2}'->'${appInfo.categoryLevel3}" default="暂无数据"/></td>
                                                <td class="a-right a-right "><c:out value="${appInfo.status}" default="暂无数据"/></td>
                                                <td class="a-right a-right "><c:out value="${appInfo.downloads}" default="暂无数据"/></td>
                                                <td class="a-right a-right "><c:out value="${appInfo.versionNo}" default="暂无数据"/></td>
                                                <td class=" last">
                                                	<a class="btn btn-xs btn-warning" href="${pageContext.request.contextPath}/app/Backend/admin/audit?id=${appInfo.id}">审核</a>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                            <!-- ${appInfo.versionNo} -->
                                        </tbody>

                                    </table>
                                </div>
                            	
                            </div>
                        </div>
                    </div>
                </div>

             <!-- footer content -->
	<script type="text/javascript">
		/* $("#adminList").click(function(){
			$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/adminList");
			}); */
	</script>
</body>
</html>