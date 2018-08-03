<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.dataTables.min.css">

	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>

	<script type="text/javascript">
        $.fn.dataTable.defaults.oLanguage = {
            "sProcessing": "处理中...",
            "sLengthMenu": "显示 _MENU_ 项结果",
            "sZeroRecords": "没有匹配结果",
            "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
            "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
            "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
            "sInfoPostFix": "",
            "sSearch": "搜索：",
            "sUrl": "",
            "sEmptyTable": "表中数据为空",
            "sLoadingRecords": "载入中...",
            "sInfoThousands": ",",
            "oPaginate": {
                "sFirst": "首页",
                "sPrevious": "上页",
                "sNext": "下页",
                "sLast": "末页"
            },
            "oAria": {
                "sSortAscending": ": 以升序排列此列",
                "sSortDescending": ": 以降序排列此列"
            }
        };
        $(document).ready( function () {
            $('#goods').DataTable({
                    "aLengthMenu":false,
                    "searching":"搜索",//禁用搜索（搜索框）
                    "paging":false,
                    "info":false
                }
            );
        } );
	</script>
	<style type="text/css">
		table{
			word-break:keep-all;/* 不换行 */
			white-space:nowrap;/* 不换行 */
		}
	</style>

</head>
<script type="javascript">
	function adminDelete(id) {
		if(confirm("您确定要删除这个学生吗？")) {
			window.location="admin?action=delete&id="+id;
		}
	}
</script>

<div class="container">
	<div class="table-responsive">
		<table class="table" id="goods">
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
							<td style="text-align:center;vertical-align:middle"><button class="btn btn-mini btn-info" type="button" onclick="javascript:window.location='admin?action=show&id=${admin.id }'">查看详细</button>
							<button class="btn btn-mini btn-info" type="button" onclick="javascript:window.location='admin?action=preSave&id=${admin.id }'">修改</button>
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