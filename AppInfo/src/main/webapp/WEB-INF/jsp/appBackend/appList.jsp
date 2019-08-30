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

                        <!-- <div class="title_right">
                            <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                <div class="input-group">
                                    <p  class="form-control">注    销    ——→</p>
                                    <span class="input-group-btn">
                            <button id="logout" class="btn btn-default" type="button">登 出!</button>
                        </span>
                                </div>
                            </div>
                        </div> -->
                    </div>
                    <div class="x_content">
	                        <div class="row">
	                        
	                        	<form class="form-horizontal form-label-left" id="searchCriteria">
		                            <div class="col-md-3 col-sm-12 col-xs-12 form-inline">
		                                <label for="ex1" >软件名称 </label>
		                                <input name="softwareName" type="text" id="ex1" class="form-control" style="width:117px;"><br>
		                                
		                                <label>一级分类 </label>
		                                <select class="form-control">
		                                	<option>-- 请选择 --</option>
		                                </select>
		                            </div>
		                            
		                            <div class="col-md-3 col-sm-12 col-xs-12 form-inline">
		                                <label>APP状态 </label>
		                                <select class="form-control">
		                                	<option>-- 请选择 --</option>
		                                </select><br>
		                                
		                                <label>二级分类 </label>
		                                <select class="form-control">
		                                	<option>-- 请选择 --</option>
		                                </select>
		                            </div>
		                            <div class="col-md-3 col-sm-12 col-xs-12 form-inline">
		                                <label>所属平台 </label>
		                                <select class="form-control">
		                                	<option>-- 请选择 --</option>
		                                </select><br>
		                                <label>三级分类 </label>
		                                <select class="form-control">
		                                	<option>-- 请选择 --</option>
		                                </select>
		                            </div>
		                        </form>
		                        
	                        </div><br>
	                        
							
	                        <a href="javascript:pageAppInfoList(${ph.currentPage-1});" class="btn btn-info btn-sm" >
	                        	查 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;询
	                        </a>
	                        
	<!--                         <div class="title_right"></div> -->
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
                                                <td class=" ">${appInfo.softwareName}</td>
                                                <td class=" "><c:out value="${appInfo.APKName}" default="-\-"/></td>
                                                <td class=" ">${appInfo.softwareSize}</td>
                                                <td class=" ">${appInfo.flatformName}</td>
                                                <td class=" ">${appInfo.categoryName1 }->${appInfo.categoryName2 }->${appInfo.categoryName3 }</td>
                                                <c:if test="${appInfo.status == 1 }">
                                                	<td class="a-right a-right ">待审核</td>
                                                </c:if>
												<c:if test="${appInfo.status == 2 }">
                                                	<td class="a-right a-right ">审核未通过</td>
                                                </c:if>
												<c:if test="${appInfo.status == 3 }">
                                                	<td class="a-right a-right ">审核通过</td>
                                                </c:if>
												<c:if test="${appInfo.status == 4 }">
                                                	<td class="a-right a-right ">已上架</td>
                                                </c:if>
												<c:if test="${appInfo.status == 5 }">
                                                	<td class="a-right a-right ">已下架</td>
                                                </c:if>
                                                <td class="a-right a-right "><c:out value="${appInfo.downloads}" default="0"/></td>
                                                <td class="a-right a-right "><c:out value="${appInfo.versionNo}" default="暂无数据"/></td>
                                                <td class=" last">
                                                	<c:forEach items="${appVersionList }" var="version">
                                                		<c:if test="${version.id==appInfo.versionId && version.versionNo==appInfo.versionNo}">
                                                			<c:if test="${version.publishStatus == 1}" var="audit">
			                                                	<a  class="btn btn-xs btn-warning" href="javascript:audit(${appInfo.id });">审核</a>
		                                                	</c:if>
		                                                	<c:if test="${!audit }">
			                                                	<a  class="btn btn-xs btn-success" href="javascript:;">审核</a>
		                                                	</c:if>
                                                		</c:if>
                                                	</c:forEach>
                                                	
                                                </td>
                                            </tr>
                                            </c:forEach>
                                            <!-- ${appInfo.versionNo} -->
                                        </tbody>
										
                                    </table>
                                    	<p>共 ${ph.totalCount } 条，${ph.totalPageCount }页</p>
                                    <nav aria-label="Page navigation">
									  <ul class="pagination">
									  	<c:if test="${ph.currentPage != 1 }">
									    	<li>
									    		<a href="javascript:pageAppInfoList(${ph.currentPage-1});" aria-label="Previous">
									    			<span aria-hidden="true">&laquo;</span>
									    		</a>
									    	</li>
										</c:if>
										
										<c:forEach begin="1" end="${ph.totalPageCount }" varStatus="statu">
											<c:if test="${ph.currentPage == statu.count }">
												<li>
													<a class="middleNum" style="background:#999;" 
														href="javascript:pageAppInfoList(${statu.count });">
														${statu.count }
													</a>
												</li>
											</c:if>
											<c:if test="${ph.currentPage != statu.count }">
												<li><a class="middleNum" 
												href="javascript:pageAppInfoList(${statu.count });">${statu.count }</a></li>
											</c:if>
										</c:forEach>
										
										<c:if test="${ph.currentPage != ph.totalPageCount }">
										    <li>
										      <a href="javascript:pageAppInfoList(${ph.currentPage+1 });" aria-label="Next">
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
		function audit(id){
			$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/audit","id="+id);
		}
		
		
		//$("#nav").attr("class", "leftNav none");
		/* $("#adminList").click(function(){
			$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/adminList");
			}); */
	</script>
</body>
</html>