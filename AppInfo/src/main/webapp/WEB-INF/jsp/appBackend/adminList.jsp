<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>App开发平台</title>
</head>
<body>
	<div class="">
                 <div class="page-title">
                     <div class="title_left">
                         <h3>管理员列表</h3>
                     </div>

                 </div>
                 <div class="clearfix"></div>

                 <div class="row">

                     <div class="col-md-12 col-sm-12 col-xs-12">
                         <div class="x_panel" style="height:600px;">
                             <div class="x_title">
                             	 <c:if test="${sessionScope.loginUserBackend.userType == 1}" var="lv">
                             	 	<a class="btn btn-success btn-sm" href="javascript:addAdmin(${sessionScope.loginUserBackend.id});">添加管理员</a>
                             	 </c:if>
                             	 <c:if test="${!lv }">
                             	 	<a class="btn btn-default buttonDisabled" href="javascript:;">添加管理员</a>
                             	 </c:if>
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
                                             <td class=" "><fmt:formatDate pattern='yyyy-MM-dd HH:mm:ss'  value='${admin.creationDate}' /></td>
                                             <td class="a-right a-right "><c:out value="${admin.modifyBy}" default="-\-"/></td>
                                             <td class="a-right a-right "><fmt:formatDate pattern='yyyy-MM-dd HH:mm:ss'  value='${admin.modifyDate}' /></td>
                                             <td class=" last">
                                             	<c:if test="${lv || admin.id==sessionScope.loginUserBackend.id}" var="updlv">
				                             	 	<a class="btn btn-xs btn-warning" href="javascript:;">修改</a><!-- updAdmin(${admin.id }) -->             
				                             	 </c:if>
                                             	<c:if test="${lv && admin.id!=7}" >
				                             	 	<a class="btn btn-xs btn-warning" href="javascript:delAdmin(${admin.id });">删除</a>
				                             	 </c:if>
                                             	<c:if test="${!updlv}">
				                             	 	<a class="btn btn-xs btn-default buttonDisabled" href="javascript:;">修改</a>             
				                             	 </c:if>
				                             	 <c:if test="${!lv || admin.id==7}" >
				                             	 	<a class="btn btn-xs btn-default buttonDisabled" href="javascript:;">删除</a>
				                             	 </c:if>
                                             </td>
                                         </tr>
                                         </c:forEach>
                                     </tbody>

                                 </table>
                                 <p>共 ${ph.totalCount } 条，${ph.totalPageCount }页</p>
                                 <nav aria-label="Page navigation">
									  <ul class="pagination">
									  	<c:if test="${ph.currentPage != 1 }">
									    	<li>
									    		<a href="javascript:adminList(${ph.currentPage-1});" aria-label="Previous">
									    			<span aria-hidden="true">&laquo;</span>
									    		</a>
									    	</li>
										</c:if>
										
										<c:forEach begin="1" end="${ph.totalPageCount }" varStatus="statu">
											<c:if test="${ph.currentPage == statu.count }">
												<li>
													<a class="middleNum" style="background:#999;" 
														href="javascript:adminList(${statu.count });">
														${statu.count }
													</a>
												</li>
											</c:if>
											<c:if test="${ph.currentPage != statu.count }">
												<li><a class="middleNum" 
												href="javascript:adminList(${statu.count });">${statu.count }</a></li>
											</c:if>
										</c:forEach>
										
										<c:if test="${ph.currentPage != ph.totalPageCount }">
										    <li>
										      <a href="javascript:adminList(${ph.currentPage+1 });" aria-label="Next">
										      	<span aria-hidden="true">&raquo;</span>
										      </a>
										    </li>
										</c:if>
									    
									  </ul>
									</nav>
                             </div>
                         	
                         </div>
                     </div>
                 </div>
  	</div>

             <!-- footer content -->
	<script type="text/javascript">
	function adminList(pageIndex){
		$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/adminList",{"pageIndex":pageIndex});
		};
	function addAdmin(id){
			$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/addAdmin",{"id":id});
	};
	function updAdmin(id){
		$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/updAdmin",{"id":id});
	};
	function delAdmin(id){
		var r = confirm("请确认删除！");
		if (r == true) {
			$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/delAdmin",{"id":id});
		}
		
	};
		/* ${pageContext.request.contextPath}/app/Backend/admin/updAdmin?id=${admin.id}
			${pageContext.request.contextPath}/app/Backend/admin/delAdmin?id=${admin.id}
		$("#adminList").click(function(){
			$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/adminList");
			}); */
	</script>
</body>
</html>