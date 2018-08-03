<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.yctu.model.Admin" %>
<%@ page import="com.yctu.model.Student" %>
<%
	if(request.getAttribute("user")==null){
		String userName=null;
		String password=null;
		String userType=null;
		String remember=null;
		
		Cookie[] cookies=request.getCookies();
		for(int i=0;cookies!=null && i<cookies.length;i++){
			if(cookies[i].getName().equals("dormuser")){
				userName=cookies[i].getValue().split("-")[0];
				password=cookies[i].getValue().split("-")[1];
				userType=cookies[i].getValue().split("-")[2];
				remember=cookies[i].getValue().split("-")[3];
			}
		}
		
		if(userName==null){
			userName="";
		}
		
		if(password==null){
			password="";
		}
		
		if(userType==null){
			userType="";
		} else if("admin".equals(userType)){
			pageContext.setAttribute("user", new Admin(userName,password));
			pageContext.setAttribute("userType", 1);
		} else if("student".equals(userType)) {
			pageContext.setAttribute("user", new Student(userName,password));
			pageContext.setAttribute("userType", 3);
		}
		
		if("yes".equals(remember)) {
			pageContext.setAttribute("remember", 1);
		}
		
	}
%>
<html lang="zh">
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>登录界面</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script type="text/javascript">
        function checkForm() {
            var userName = document.getElementById("userName").value;
            var password = document.getElementById("password").value;
            var userTypes = document.getElementsByName("userType");
            var userType = null;
            for(var i=0;i<userTypes.length;i++) {
                if(userTypes[i].checked) {
                    userType=userTypes[i].value;
                    break;
                }
            }
            if (userName == null || userName == "") {
                document.getElementById("error").innerHTML = "用户名不能为空";
                return false;
            }
            if (password == null || password == "") {
                document.getElementById("error").innerHTML = "密码不能为空";
                return false;
            }
            if (userType == null || userType == "") {
                document.getElementById("error").innerHTML = "请选择用户类型";
                return false;
            }
            return true;
        }
	</script>

<style>
	.col-center-block {
		float: none;
		display: block;
		margin-left: auto;
		margin-right: auto;
	}

</style>
</head>

<body>
<div class="container">
	<div class="row myCenter">
		<div class="col-xs-6 col-md-4 col-center-block">
			<form name="myForm" class="form-signin" action="login" method="post" onsubmit="return checkForm()">
			<h2 class="form-signin-heading ">请登录${param.msg}</h2>
				<input type="hidden" name="location" id="location">
				<label for="username" class="sr-only">用户名</label>
				<input id="userName" name="userName" value="${user.userName }" type="text" class="form-control" placeholder="用户名">
				<label for="password" class="sr-only">密码</label>
				<input id="password" name="password" value="${user.password }" type="password" class="form-control" placeholder="密码" >
				<div class="checkbox">
					<input id="admin" type="radio" name="userType" value="admin"  checked/> 管理员
					</label>
					<label>
					<input id="student" type="radio" name="userType" value="student"  ${userType==3?'checked':''}/> 学生
					</label>
					<label>
						<input type="checkbox" value="remember-me">
						记住我 </label>
					<label>
				</div>

				<button class="btn btn-lg btn-primary btn-block" type="submit" id="submitForm">登录</button>
			</form>
		</div>
	</div>
</div>
</body>

</html>