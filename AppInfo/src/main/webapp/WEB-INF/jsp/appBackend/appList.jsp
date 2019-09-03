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
                                                	<a  class="btn btn-xs btn-warning" href="javascript:audit(${appInfo.id});">审核</a>
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
		
		//AppList 跳转
		function pageAppInfoList(pageIndex){
		//		var data = $("#searchCriteria").serialize();//这里获取的是text 不是 value
			var softwareName = $("input[name='softwareName']").val();
			var categoryLevel1 = $("#categoryLevel1 option:selected").val();
			var categoryLevel2 = $("#categoryLevel2 option:selected").val();
			var categoryLevel3 = $("#categoryLevel3 option:selected").val();
			var status = $("#status option:selected").val();
			var flatformId = $("#flatformId option:selected").val();
			$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/appList",
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
		//$("#nav").attr("class", "leftNav none");
		/* $("#adminList").click(function(){
			$("#right_col").load("${pageContext.request.contextPath}/app/Backend/admin/adminList");
			}); */
	</script>
</body>
</html>