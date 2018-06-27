<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
	<meta charset="utf-8"> 
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
<!-- 定义单元格宽度及样式 -->

$(document).ready(function() {  
	  
    $("th").css("white-space","nowrap");  

});
$(document).ready(function(){
	$("ul li:eq(2)").addClass("active");
 
});

window.onload = function(){ 
	$("#DataTables_Table_0_wrapper .row-fluid").remove();
};
	function adminDelete(id) {
		if(confirm("您确定要删除这个学生吗？")) {
			window.location="admin?action=delete&id="+id;
		}
	}
</script>
<style type="text/css">
	.span6 {
		width:0px;
		height: 0px;
		padding-top: 0px;
		padding-bottom: 0px;
		margin-top: 0px;
		margin-bottom: 0px;
	}

</style>
<style>
td {
	text-align:center;
	vertical-align:middle;

      white-space:nowrap;overflow:hidden;
}
</style>
<style>
table{
        word-wrap:break-word;
         table-layout:fixed; 
}
</style>
<div class="data_list">
		<div>
			<table class="table table-striped table-bordered table-hover datatable" style="text-align:center;vertical-align:middle">
				<thead>
					<tr>
					<th style="text-align:center;vertical-align:middle">班级</th>
					<th style="text-align:center;vertical-align:middle">姓名</th>
					<th style="text-align:center;vertical-align:middle">学号</th>
					<th style="text-align:center;vertical-align:middle">手机号</th>
					<th style="text-align:center;vertical-align:middle">操作</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach  varStatus="i" var="admin" items="${studentList }">
					<tr>
							<td style="text-align:center;vertical-align:middle">${admin.grade }</td> 
							<td style="text-align:center;vertical-align:middle">${admin.name}</td>
							<td style="text-align:center;vertical-align:middle">${admin.stuId}</td>
							<td style="text-align:center;vertical-align:middle">${admin.telNumber}</td>
							<td><button class="btn btn-mini btn-info" type="button" onclick="javascript:window.location='admin?action=show&id=${admin.id }'">查看详细</button>&nbsp;
							<button class="btn btn-mini btn-info" type="button" onclick="javascript:window.location='admin?action=preSave&id=${admin.id }'">修改</button>&nbsp;
							<button class="btn btn-mini btn-danger" type="button" onclick="adminDelete(${admin.id })">删除</button></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<div align="center"><font color="red">${error }</font></div>
		<nav style="text-align: center">
		 <div class="pagination pagination-centered">
		 <ul class="pagination pagination-centered">
				${pageCode }
			</ul>
		</div> 
		</nav>
</div>