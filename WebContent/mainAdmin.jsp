<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.model.Admin" %>
<%@ page import="com.model.Student" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js">
</script>
</head>
<body>

<nav class="navbar navbar-default" role="navigation">
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
 <form class="navbar-form navbar-left" role="search">
  
            <input type="text" class="form-control" placeholder="姓名、学号">
</form>
<li><a href="admin?action=list"><span class="glyphicon glyphicon-search"></span> 搜索</a></li>
<li><a href="login.jsp"><span class="glyphicon glyphicon-log-out"></span> 退出登录</a></li>
		</ul>
	</div>
	<jsp:include page="${mainPage==null?'admin/blank.jsp':mainPage}"></jsp:include>
	</div>
</nav>

</body>
</html>