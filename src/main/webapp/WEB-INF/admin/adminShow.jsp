<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
	function checkForm(){
		var grade=document.getElementById("grade").value;
		var name=document.getElementById("name").value;
		var stuId=document.getElementById("stuId").value;
		var teacher=document.getElementById("teacher").value;
		var sex=document.getElementById("sex").value;
		var hobby=document.getElementById("hobby").value;
		var specialty=document.getElementById("specialty").value;
		var natPlace=document.getElementById("natPlace").value;
		var ofPlace=document.getElementById("ofPlace").value;
		var nation=document.getElementById("nation").value;
		var status=document.getElementById("status").value;
		var qq=document.getElementById("qq").value;
		var telNumber=document.getElementById("telNumber").value;
		var phoModel=document.getElementById("phoModel").value;
		var phoImei=document.getElementById("phoImei").value;
		var mail=document.getElementById("mail").value;
		var weiChat=document.getElementById("weiChat").value;
		var idCard=document.getElementById("idCard").value;
		var fatTelNum=document.getElementById("fatTelNum").value;
		var motTelNum=document.getElementById("motTelNum").value;
		var address=document.getElementById("address").value;
		var famCon=document.getElementById("famCon").value;
		var dorBuiNum=document.getElementById("dorBuiNum").value;
		var dorNum=document.getElementById("dorNum").value;
		var bedNum=document.getElementById("bedNum").value;
		var don=document.getElementById("don").value;
		var cleTim=document.getElementById("cleTim").value;
		var comSecLe=document.getElementById("comSecLe").value;
		var cet4=document.getElementById("cet4").value;
		var cet6=document.getElementById("cet6").value;
		var classDut=document.getElementById("classDut").value;
		var stuUniDut=document.getElementById("stuUniDut").value;
		var acaUniDut=document.getElementById("acaUniDut").value;
		var schUniDut=document.getElementById("schUniDut").value;
		var association=document.getElementById("association").value;
		var pooStuFil=document.getElementById("pooStuFil").value;
		var pubMed=document.getElementById("pubMed").value;
		var illtems=document.getElementById("illtems").value;
		var laterTim=document.getElementById("laterTim").value;
		var latEarTim=document.getElementById("latEarTim").value;
		var latMorTim=document.getElementById("latMorTim").value;
		var noMorTim=document.getElementById("noMorTim").value;
		var criSit=document.getElementById("criSit").value;
		var punSit=document.getElementById("punSit").value;
		var comModel=document.getElementById("comModel").value;
		var comWifMac=document.getElementById("comWifMac").value;
		var comWirMac=document.getElementById("comWirMac").value;
		var disHis=document.getElementById("disHis").value;
		return true;
	}
	
	$(document).ready(function(){
		$("ul li:eq(2)").addClass("active");
	});
</script>
<div class="data_list">
		<div class="data_list_title">
				
		</div>
		<form action="admin?action=save" method="post" onsubmit="return checkForm()">
		<div class="data_form" >
		
				<div class="input-group;col-md-6"><span class="input-group-addon">班级</span>
							<span class="input-group-addon">${admin.grade }</span></div>
							
						
							<div class="input-group;col-md-6"><span class="input-group-addon">姓名</span>
							<span class="input-group-addon">${admin.name }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">学号</span>
							<span class="input-group-addon">${admin.stuId }</span></div>
			
		
							<div class="input-group;col-md-6"><span class="input-group-addon">班主任</span>
							<span class="input-group-addon">${admin.teacher }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">性别</span>
							<span class="input-group-addon">${admin.sex }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">兴趣爱好</span>
							<span class="input-group-addon">${admin.hobby }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">特长</span>
							<span class="input-group-addon">${admin.specialty }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">籍贯</span>
							<span class="input-group-addon">${admin.natPlace }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">生源地</span>
							<span class="input-group-addon">${admin.ofPlace }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">民族</span>
							<span class="input-group-addon">${admin.nation }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">政治面貌</span>
							<span class="input-group-addon">${admin.status }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">QQ号</span>
							<span class="input-group-addon">${admin.qq }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">手机号码</span>
							<span class="input-group-addon">${admin.telNumber }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">手机品牌型号</span>
							<span class="input-group-addon">${admin.phoModel }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">手机移动设备识别码</span>
							<span class="input-group-addon">${admin.phoImei }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">邮箱</span>
							<span class="input-group-addon">${admin.mail }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">微信</span>
							<span class="input-group-addon">${admin.weiChat }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">身份证号码</span>
							<span class="input-group-addon">${admin.idCard }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">父亲联系方式</span>
							<span class="input-group-addon">${admin.fatTelNum }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">母亲联系方式</span>
							<span class="input-group-addon">${admin.motTelNum }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">家庭住址</span>
							<span class="input-group-addon">${admin.address }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">家庭条件</span>
							<span class="input-group-addon">${admin.famCon }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">宿舍楼号</span>
							<span class="input-group-addon">${admin.dorBuiNum }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">宿舍号</span>
							<span class="input-group-addon">${admin.dorNum }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">床位号</span>
							<span class="input-group-addon">${admin.bedNum }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">是否为舍长</span>
							<span class="input-group-addon">${admin.don }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">个人打扫时间</span>
							<span class="input-group-addon">${admin.cleTim }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">计算机二级</span>
							<span class="input-group-addon">${admin.comSecLe }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">英语四级</span>
							<span class="input-group-addon">${admin.cet4 }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">英语六级</span>
							<span class="input-group-addon">${admin.cet6 }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">班级职务</span>
							<span class="input-group-addon">${admin.classDut }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">学生会担任职务</span>
							<span class="input-group-addon">${admin.stuUniDut }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">院级协会担任职务</span>
							<span class="input-group-addon">${admin.acaUniDut }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">校级部门担任职务</span>
							<span class="input-group-addon">${admin.schUniDut }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">参加协会社团</span>
							<span class="input-group-addon">${admin.association }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">贫困生建档</span>
							<span class="input-group-addon">${admin.pooStuFil }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">考研意向</span>
							<span class="input-group-addon">${admin.pubMed }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">违章物品</span>
							<span class="input-group-addon">${admin.illtems }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">晚归次数</span>
							<span class="input-group-addon">${admin.laterTim }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">迟到早退次数</span>
							<span class="input-group-addon">${admin.latEarTim }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">早操迟到次数</span>
							<span class="input-group-addon">${admin.latMorTim }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">早操旷操次数</span>
							<span class="input-group-addon">${admin.noMorTim }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">通报批评情况</span>
							<span class="input-group-addon">${admin.criSit }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">处分情况</span>
							<span class="input-group-addon">${admin.punSit }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">电脑品牌型号</span>
							<span class="input-group-addon">${admin.comModel }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">电脑无线网卡Mac地址</span>
							<span class="input-group-addon">${admin.comWifMac }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">电脑有线网卡Mac地址</span>
							<span class="input-group-addon">${admin.comWirMac }</span></div>
						
						
							<div class="input-group;col-md-6"><span class="input-group-addon">疾病史</span>
							<span class="input-group-addon">${admin.disHis }</span></div>
</div>
		</form>
</div>