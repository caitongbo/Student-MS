<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse" role="navigation">
	<div class="container-fluid"> 
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#example-navbar-collapse">
			<span class="sr-only">切换导航</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#">学生信息管理系统</a>
	</div>
	<div class="collapse navbar-collapse" id="example-navbar-collapse">
		<ul class="nav navbar-nav">
			<li class="active"><li><a href="blank"></i><span class="glyphicon glyphicon-home"></span> 首页</a></li>
			<li><a href="admin?action=list"><span class="glyphicon glyphicon-user"></span> 学生管理</a></li>
			<li><a href="admin?action=preSave"><span class="glyphicon glyphicon-plus"></span> 添加</a></li>	
			<li><a href="login.jsp"><span class="glyphicon glyphicon-log-out"></span> 退出登录</a></li>
		</ul>
	</div>
	</div>
</nav>
<jsp:include page="${mainPage==null?'WEB-INF/admin/blank.jsp':mainPage}"></jsp:include>
</body>
</html>