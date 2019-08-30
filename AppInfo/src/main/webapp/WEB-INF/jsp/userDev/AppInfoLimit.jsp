<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div class="x_content" id="AppInfoTable">
	<table id="example"
		class="table table-striped responsive-utilities jambo_table">
		<thead>
			<tr class="headings">
				<th><input type="checkbox" class="tableflat"></th>
				<th>软件名称</th>
				<th>APK名称</th>
				<th>软件大小(单位:M)</th>
				<th>所属平台</th>
				<th>所属分类(一级分类/二级分类/三级分类)</th>
				<th>状态</th>
				<th>下载次数</th>
				<th>最新版本</th>
				<th class=" no-link last"><span class="nobr">操作</span></th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${appInfoList }" var="item" varStatus="staus">
				<tr class="even pointer">
					<td class="a-center "><input type="checkbox" class="tableflat"></td>
					<td class=" ">${item.softwareName }</td>
					<td class=" ">${item.APKName }</td>
					<td class=" ">${item.softwareSize }</td>
					<td class=" ">${item.flatformName }</td>
					<td class=" ">${item.categoryName1 }->${item.categoryName2 }->${item.categoryName3 }</td>

					<!--/**int(30) APP状态<br>
					 * 1 待审核<br>* 2 审核未通过<br>* 3 审核通过<br>* 4 已上架<br>* 5 已下架*/-->

					<c:if test="${item.status == 1 }">
						<td class="a-right a-right ">待审核</td>
					</c:if>
					<c:if test="${item.status == 2 }">
						<td class="a-right a-right ">审核未通过</td>
					</c:if>
					<c:if test="${item.status == 3 }">
						<td class="a-right a-right ">审核通过</td>
					</c:if>
					<c:if test="${item.status == 4 }">
						<td class="a-right a-right ">已上架</td>
					</c:if>
					<c:if test="${item.status == 5 }">
						<td class="a-right a-right ">已下架</td>
					</c:if>
					<c:if test="${item.downloads==null or  item.downloads==''}">
						<td class="a-right a-right ">0</td>
					</c:if>
					<c:if test="${item.downloads!=null and  item.downloads!=''}">
						<td class="a-right a-right ">${item.downloads }</td>
					</c:if>
					<td class="a-right a-right ">${item.versionNo }</td>
					<td class=" last"><a class="btn btn-xs btn-warning" href="#">修改</a>
						<a class="btn btn-xs btn-danger" href="#">删除</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


	<nav aria-label="Page navigation">
		<ul class="pagination">
			<c:if test="${ph.currentPage != 1 }">
				<li><a href="javascript:pageAppInfoList(${ph.currentPage-1});"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
			</c:if>

			<c:forEach begin="1" end="${ph.totalPageCount }" varStatus="statu">
				<c:if test="${ph.currentPage == statu.count }">
					<li><a class="middleNum" style="background: #999;"
						href="javascript:pageAppInfoList(${statu.count });">
							${statu.count } </a></li>
				</c:if>
				<c:if test="${ph.currentPage != statu.count }">
					<li><a class="middleNum"
						href="javascript:pageAppInfoList(${statu.count });">${statu.count }</a></li>
				</c:if>
			</c:forEach>

			<c:if test="${ph.currentPage != ph.totalPageCount }">
				<li><a href="javascript:pageAppInfoList(${ph.currentPage+1 });"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</c:if>

		</ul>
	</nav>
</div>
</html>