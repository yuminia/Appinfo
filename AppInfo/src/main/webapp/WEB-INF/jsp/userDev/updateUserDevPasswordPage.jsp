<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>


     <div  class="animate form">
         <section class="login_content">
         	<form id="updateUserDevPassword" action="javascript:;" method="post">
                 <h1>userDev修改密码</h1>
                 
                 <div><input type="password" class="form-control" placeholder="原密码" name="oldDevPassword" required="required" /></div>
                 <div><input type="password" class="form-control" placeholder="新密码" name="password1" required="required" /></div>
                 <div><input type="password" class="form-control" placeholder="确认新密码" name="password2" required="required" /></div>
                 <div><input type="submit" class="btn btn-lg btn-warning submit" value="确认修改"/></div>
                 <div class="clearfix"></div>
                 <div class="separator">
                     <div class="clearfix"></div>
                     <br />
                     <div>
                         <h1><i class="fa fa-paw" style="font-size: 26px;"></i> App开发平台</h1>
                     </div>
                 </div>
             </form>
         </section>
         <!-- content -->
     </div>
        
	<script type="text/javascript">
		//修改密码  异步提交
		$("#updateUserDevPassword").submit(function(){
			var password1 = $("input[name='password1']").val();
			var password2 = $("input[name='password2']").val();
			var oldDevPassword = $("input[name='oldDevPassword']").val();
			if( oldDevPassword==null || oldDevPassword =='' || password1==null 
					|| password1 =='' || password2==null || password2 =='' ){
				alert("请确认密码都有填写");
				return;
			}
			if( password1 != password2 ){
				alert("两次新密码不一致");
				return;
			}else{
				$.ajax({
					url:"<%=request.getContextPath() %>/app/userDev/updateUserDevPasswordSubmit",
					data:{
						"oldDevPassword":oldDevPassword,
						"password1":password1,
						"password2":password2
					},
					type:"post",
					success:function(data){
						if(data){
							alert("恭喜你,密码修改成功");
							$("body").load("${pageContext.request.contextPath}/app/userDev/main");
						}else{
							alert("原密码错误,修改失败!");
						}
						
					}
				});
			}
		});
	</script>
</html>