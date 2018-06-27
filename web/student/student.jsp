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
	function studentDelete(id) {
		if(confirm("您确定要删除这个学生吗？")) {
			window.location="student?action=delete&id="+id;
		}
	}
</script>

	<form class="bs-example bs-example-form" role="form">
				<c:forEach  varStatus="i" var="student" items="${studentList }">
							<div class="input-group;col-md-6"><span class="input-group-addon">班级</span>
							<span class="input-group-addon">${student.grade }</span></div>
							
						
							<div class="input-group;col-md-6"><span class="input-group-addon">姓名</span>
							<span class="input-group-addon">${student.name }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">学号</span>
							<span class="input-group-addon">${student.stuId }</span></div>
			
		
							<div class="input-group;col-md-6"><span class="input-group-addon">班主任</span>
							<span class="input-group-addon">${student.teacher }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">性别</span>
							<span class="input-group-addon">${student.sex }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">兴趣爱好</span>
							<span class="input-group-addon">${student.hobby }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">特长</span>
							<span class="input-group-addon">${student.specialty }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">籍贯</span>
							<span class="input-group-addon">${student.natPlace }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">生源地</span>
							<span class="input-group-addon">${student.ofPlace }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">民族</span>
							<span class="input-group-addon">${student.nation }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">政治面貌</span>
							<span class="input-group-addon">${student.status }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">QQ号</span>
							<span class="input-group-addon">${student.qq }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">手机号码</span>
							<span class="input-group-addon">${student.telNumber }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">手机品牌型号</span>
							<span class="input-group-addon">${student.phoModel }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">手机移动设备识别码</span>
							<span class="input-group-addon">${student.phoImei }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">邮箱</span>
							<span class="input-group-addon">${student.mail }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">微信</span>
							<span class="input-group-addon">${student.weiChat }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">身份证号码</span>
							<span class="input-group-addon">${student.idCard }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">父亲联系方式</span>
							<span class="input-group-addon">${student.fatTelNum }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">母亲联系方式</span>
							<span class="input-group-addon">${student.motTelNum }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">家庭住址</span>
							<span class="input-group-addon">${student.address }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">家庭条件</span>
							<span class="input-group-addon">${student.famCon }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">宿舍楼号</span>
							<span class="input-group-addon">${student.dorBuiNum }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">宿舍号</span>
							<span class="input-group-addon">${student.dorNum }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">床位号</span>
							<span class="input-group-addon">${student.bedNum }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">是否为舍长</span>
							<span class="input-group-addon">${student.don }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">个人打扫时间</span>
							<span class="input-group-addon">${student.cleTim }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">计算机二级</span>
							<span class="input-group-addon">${student.comSecLe }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">英语四级</span>
							<span class="input-group-addon">${student.cet4 }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">英语六级</span>
							<span class="input-group-addon">${student.cet6 }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">班级职务</span>
							<span class="input-group-addon">${student.classDut }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">学生会担任职务</span>
							<span class="input-group-addon">${student.stuUniDut }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">院级协会担任职务</span>
							<span class="input-group-addon">${student.acaUniDut }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">校级部门担任职务</span>
							<span class="input-group-addon">${student.schUniDut }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">参加协会社团</span>
							<span class="input-group-addon">${student.association }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">贫困生建档</span>
							<span class="input-group-addon">${student.pooStuFil }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">考研意向</span>
							<span class="input-group-addon">${student.pubMed }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">违章物品</span>
							<span class="input-group-addon">${student.illtems }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">晚归次数</span>
							<span class="input-group-addon">${student.laterTim }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">迟到早退次数</span>
							<span class="input-group-addon">${student.latEarTim }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">早操迟到次数</span>
							<span class="input-group-addon">${student.latMorTim }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">早操旷操次数</span>
							<span class="input-group-addon">${student.noMorTim }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">通报批评情况</span>
							<span class="input-group-addon">${student.criSit }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">处分情况</span>
							<span class="input-group-addon">${student.punSit }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">电脑品牌型号</span>
							<span class="input-group-addon">${student.comModel }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">电脑无线网卡Mac地址</span>
							<span class="input-group-addon">${student.comWifMac }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">电脑有线网卡Mac地址</span>
							<span class="input-group-addon">${student.comWirMac }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">疾病史</span>
							<span class="input-group-addon">${student.disHis }</span></div>
			
				</c:forEach>
		</form>
