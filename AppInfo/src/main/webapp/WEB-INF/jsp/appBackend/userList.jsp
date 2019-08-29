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
                                             <th>开发者编码 </th>
                                             <th>开发者名称</th>
                                             <th>开发者邮箱 </th>
                                             <th>更新者ID</th>
                                             <th>更新时间</th>
                                             <th>创建者ID</th>
                                             <th>创建时间 </th>
                                             <th>开发者信息 </th>
                                             <th class=" no-link last"><span class="nobr">操作</span>
                                             </th>
                                         </tr>
                                     </thead>

                                     <tbody>
                                     	<c:forEach items="${requestScope.userList}" var="user">
                                         <tr class="even pointer">
                                             <td class=" "><c:out value="${user.devCode}" default="暂无数据"/></td>
                                             <td class=" "><c:out value="${user.devName}" default="暂无数据"/></td>
                                             <td class=" "><c:out value="${user.devEmail}" default="暂无数据"/></td>
                                             <td class=" "><c:out value="${user.modifyBy}" default="暂无数据"/></td>
                                             <td class=" "><c:out value="${user.modifyDate}" default="暂无数据"/></td>
                                             <td class="a-right a-right "><c:out value="${user.createdBy}" default="暂无数据"/></td>
                                             <td class="a-right a-right "><c:out value="${user.creationDate}" default="暂无数据"/></td>
                                             <td class="a-right a-right "><c:out value="${user.devInfo}" default="暂无数据"/></td>
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