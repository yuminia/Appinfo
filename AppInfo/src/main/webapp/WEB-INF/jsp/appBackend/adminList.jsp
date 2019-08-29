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

                 </div>
                 <div class="clearfix"></div>

                 <div class="row">

                     <div class="col-md-12 col-sm-12 col-xs-12">
                         <div class="x_panel" style="height:600px;">
                             <div class="x_title">
                                 <a class="btn btn-success btn-sm" href="javascript:addAdmin(${sessionScope.loginUserBackend.id});">添加管理员</a>
                             </div>
                         	
                         	<div class="x_content">
                                 <table id="example" class="table table-striped responsive-utilities jambo_table">
                                     <thead>
                                         <tr class="headings">
                                             <th>后台用户编码 </th>
                                             <th>后台用户名称</th>
                                             <th>后台用户类型 </th>
                                             <th>创建者ID</th>
                                             <th>创建时间</th>
                                             <th>更新者ID</th>
                                             <th>更新时间</th>
                                             <th class=" no-link last"><span class="nobr">操作</span>
                                             </th>
                                         </tr>
                                     </thead>

                                     <tbody>
                                     	<c:forEach items="${requestScope.adminList}" var="admin">
                                         <tr class="even pointer">
                                             <td class=" "><c:out value="${admin.userCode}" default="暂无数据"/></td>
                                             <td class=" "><c:out value="${admin.userName}" default="暂无数据"/></td>
                                             <td class=" "><c:out value="${admin.userType}" default="暂无数据"/></td>
                                             <td class=" "><c:out value="${admin.createdBy}" default="-\-"/></td>
                                             <td class=" "><c:out value="${admin.creationDate}" default="暂无数据"/></td>
                                             <td class="a-right a-right "><c:out value="${admin.modifyBy}" default="-\-"/></td>
                                             <td class="a-right a-right "><c:out value="${admin.modifyDate}" default="-\-"/></td>
                                             <td class=" last">
                                             	<a class="btn btn-xs btn-warning" href="${pageContext.request.contextPath}/app/Backend/admin/audit?id=${appInfo.id}">修改</a>
                                             	<a class="btn btn-xs btn-warning" href="${pageContext.request.contextPath}/app/Backend/admin/audit?id=${appInfo.id}">删除</a>
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