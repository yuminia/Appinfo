<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<div class="">
	<div class="page-title">
		<div class="title_left">
			<h3>新增APP</h3>
		</div>
	</div>
	<div class="clearfix"></div>

	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				
				<div class="x_content">

					<form class="form-horizontal form-label-left" novalidate method="post"  enctype="multipart/form-data" 
						action="javascript:;" id="addAppInfo">
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="softwareName">软件名称<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="softwareName" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="softwareName" placeholder="请输入软件名称" required 
									type="text">
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="APKName">APK名称<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="interfaceLanguage" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="APKName" placeholder="请输入APK名称" required type="text">
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="supportROM">支持ROM<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="supportROM" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="supportROM" placeholder="请输入支持ROM大小" required type="text">
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="interfaceLanguage">界面语言<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="interfaceLanguage" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="interfaceLanguage" placeholder="请输入界面语言" required type="text">
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="softwareSize">软件大小<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="softwareSize" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="softwareSize" placeholder="请输入软件大小" required type="text">
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="downloads">下载次数<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input id="downloads" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="downloads" value="0" type="text" readonly>
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="flatformId">所属平台<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<select id="flatformId" class="form-control col-md-7 col-xs-12" name="flatformId">
									<option value="0"> -- 请选择 -- </option>
									<c:forEach items="${flatformList }" var="item">
										<option value="${item.id }">${item.flatformName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="categoryLevel1">一级分类<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<select id="categoryLevel1" class="form-control col-md-7 col-xs-12" name="categoryLevel1">
									<option value="0"> -- 请选择 -- </option>
									<c:forEach items="${categoryList1 }" var="item">
										<option value="${item.id }">${item.categoryName }</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="categoryLevel2">二级分类<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<select id="categoryLevel2" class="form-control col-md-7 col-xs-12" name="categoryLevel2">
									<option value="0"> -- 请选择 -- </option>
								</select>
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="categoryLevel3">三级分类<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<select id="categoryLevel3" class="form-control col-md-7 col-xs-12" name="categoryLevel3">
									<option value="0"> -- 请选择 -- </option>
								</select>
							</div>
						</div>
						
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="status">APP状态<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="hidden" name="status" value="1">
								<input id="status" class="form-control col-md-7 col-xs-12"
									data-validate-length-range="6" data-validate-words="2"
									name="" value="待审核" readonly>
							</div>
						</div>

						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="appInfo">APP简介 <span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<textarea id="appInfo" required="required" name="appInfo"
									placeholder="请输入APP软件的相关信息" class="form-control col-md-7 col-xs-12"></textarea>
							</div>
						</div>
						<div class="item form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12"
								for="email">LOGO图片<span class="required">*</span>
							</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input type="file" id="file_logoPicPath" name="file_logoPicPath">
							</div>

						</div>
						<div class="ln_solid"></div>
						<div class="form-group">
							<div class="col-md-6 col-md-offset-3">
								<a href="javascript:;pageTo('appInfo/AppList');" class="btn btn-primary">返回</a>
								<button id="send" type="submit" class="btn btn-success">保存</button>
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</div>


<script>
	//addAppInfoSubmit 表单提交
	$("#addAppInfo").submit(function(){
		//var data = $(this).serialize();
		var data = new FormData(document.getElementById("addAppInfo"));
		var mark = true;
		$("input:required").each(function(index,item){
			var text = $(item).val();
			if(text== null || text == ''){
				mark = false;
			}
		});
		if(mark){
			$.ajax({
				url:"<%=request.getContextPath() %>/app/appInfo/addAppInfoSubmit",
				data:data,
				type:"post",
				processData:false,
				contentType:false,
				success:function(data){
					console.log(data);
					console.log(typeof data);
					if(data == true){
						alert("添加成功");
						$("#contentDiv").load("${pageContext.request.contextPath}/app/appInfo/AppList",
		        				{"pageIndex":1});
					}else{
						alert(data);
					}
				},
				error:function(err){
					console.log(err)
					alert(err["responseText"])
				}
			})
		}else{
			alert("请正确填写...")
		}
		
	})
	
	
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

	// initialize the validator function
	validator.message['date'] = 'not a real date';

	// validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
	$('form').on('blur',
			'input[required], input.optional, select.required',
			validator.checkField).on('change', 'select.required',
			validator.checkField).on('keypress',
			'input[required][pattern]', validator.keypress);

	$('.multi.required').on('keyup blur', 'input', function() {
		validator.checkField.apply($(this).siblings().last()[0]);
	});

	// bind the validation to the form submit event
	//$('#send').click('submit');//.prop('disabled', true);

	$('form').submit(function(e) {
		e.preventDefault();
		var submit = true;
		// evaluate the form using generic validaing
		if (!validator.checkAll($(this))) {
			submit = false;
		}

		if (submit)
			this.submit();
		return false;
	});

	/* FOR DEMO ONLY */
	$('#vfields').change(function() {
		$('form').toggleClass('mode2');
	}).prop('checked', false);

	$('#alerts').change(function() {
		validator.defaults.alerts = (this.checked) ? false : true;
		if (this.checked)
			$('form .alert').remove();
	}).prop('checked', false);
</script>

</body>
</html>