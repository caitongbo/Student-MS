<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.studentmanage.model.Admin" %>
<%@ page import="com.studentmanage.model.Student" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid"> 
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#example-navbar-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#">学生信息管理系统</a>
	</div>
	<div class="collapse navbar-collapse" id="example-navbar-collapse">
		<ul class="nav navbar-nav">
			<li class="active"><li><a href="blank"></i><span class="glyphicon glyphicon-home"></span> 首页</a></li>
			<li><a href="student?action=list"><span class="glyphicon glyphicon-user"></span> 个人信息</a></li>
			<li><a href="login.jsp"><span class="glyphicon glyphicon-log-out"></span> 退出</a></li>
			</li>
		</ul>
	</div>
	<jsp:include page="${mainPage==null?'student/blank.jsp':mainPage}"></jsp:include>
	</div>
</nav>

</body>
</html>