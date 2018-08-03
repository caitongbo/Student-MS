<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
	function checkForm(){
		var password=document.getElementById("password").value;
		var rPassword=document.getElementById("rPassword").value;
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
	
// 		if(grade==""||name==""||id==""||teacher==""||sex==""||hobby==""||specialty==""||natPlace==""||ofPlace==""||nation==""||status==""||qq==""||telNumber==""||phoModel==""||phoImei==""||mail==""||weiChat==""||idCard==""||fatTelNum==""||motTelNum==""||address==""||famCon==""||dorBuiNum==""||dorNum==""||bedNum==""||don==""||cleTim==""||comSecLe==""||cet4==""||cet6==""||classDut==""||stuUniDut==""||acaUniDut==""||schUniDut==""||association==""||pooStuFil==""||pubMed==""||illtems==""||laterTim==""||latEarTim==""||latMorTim==""||noMorTim==""||criSit==""||punSit==""||comModel==""||comWifMac==""||comWirMac==""||disHis==""||password==""||rpassword==""){
// 			document.getElementById("error").innerHTML="信息填写不完整！";
// 			return false;
// 		} else
			if(password!=rPassword){
			document.getElementById("error").innerHTML="密码填写不一致！";
			return false;
		}
		return true;
	}
	
	$(document).ready(function(){
		$("ul li:eq(2)").addClass("active");
	});
</script>
<div class="data_list">
		<div class="data_list_title">
		<c:choose>
			<c:when test="${student.stuId!=null }">
			
			</c:when>
			<c:otherwise>
				
			</c:otherwise>
		</c:choose>
		</div>
		<form action="student?action=save" method="post" onsubmit="return checkForm()">
			<div class="data_form" >
				<input type="hidden" id="id" name="id" value="${student.id }"/>
					<table align="center">
					<tr>
							<td>密码：</td>
							<td><input type="password" id="password"  name="password" value="${student.password }"   /></td>
						</tr>
				<tr>
							<td>重复密码：</td>
							<td><input type="password" id="rpassword"  name="password" value="${student.password }"   /></td>
						</tr>
				
						<tr>
							<td>班级：</td>
							<td><input type="text" id="grade"  name="grade" value="${student.grade }"   /></td>
						</tr>

						<tr>
							<td>姓名：</td>
							<td><input type="text" id="name"  name="name" value="${student.name }"   /></td>
						</tr>
						<tr>
							<td>学号：</td>
							<td><input type="text" id="stuId"  name="stuId" value="${student.stuId }"   /></td>
						</tr>
						<tr>
							<td>班主任：</td>
							<td><input type="text" id="teacher"  name="teacher" value="${student.teacher }"   /></td>
						</tr>
						<tr>
						<td>性别：</td>
							<td>
								<select id="sex" name="sex" style="width: 90px;">
									<option value="">请选择...</option>
									<option value="男" ${student.sex eq "男"?'selected':'' }>男</option>
									<option value="女" ${student.sex eq "女"?'selected':'' }>女</option>
								</select>
							</td>
						</tr>
						<tr>
							<td>兴趣爱好：</td>
							<td><input type="text" id="hobby"  name="hobby" value="${student.hobby }"   /></td>
						</tr>
						<tr>
							<td>特长：</td>
							<td><input type="text" id="specialty"  name="specialty" value="${student.specialty }"   /></td>
						</tr>
						<tr>
							<td>籍贯：</td>
							<td><input type="text" id="natPlace"  name="natPlace" value="${student.natPlace }"   /></td>
						</tr>
						<tr>
							<td>生源地：</td>
							<td><input type="text" id="ofPlace"  name="ofPlace" value="${student.ofPlace }"   /></td>
						</tr>
						<tr>
							<td>民族：</td>
							<td><input type="text" id="nation"  name="nation" value="${student.nation }"   /></td>
						</tr>
						<tr>
							<td>政治面貌：</td>
							<td><input type="text" id="status"  name="status" value="${student.status }"   /></td>
						</tr>
						<tr>
							<td>QQ号：</td>
							<td><input type="text" id="qq"  name="qq" value="${student.qq }"   /></td>
						</tr>
						<tr>
							<td>手机号码：</td>
							<td><input type="text" id="telNumber"  name="telNumber" value="${student.telNumber }"   /></td>
						</tr>
						<tr>
							<td>手机品牌型号：</td>
							<td><input type="text" id="phoModel"  name="phoModel" value="${student.phoModel }"   /></td>
						</tr>
						<tr>
							<td>手机移动设备识别码：</td>
							<td><input type="text" id="phoImei"  name="phoImei" value="${student.phoImei }"   /></td>
						</tr>
						<tr>
							<td>邮箱：</td>
							<td><input type="text" id="mail"  name="mail" value="${student.mail }"   /></td>
						</tr>
						<tr>
							<td>微信：</td>
							<td><input type="text" id="weiChat"  name="weiChat" value="${student.weiChat }"   /></td>
						</tr>
						<tr>
							<td>身份证号码：</td>
							<td><input type="text" id="idCard"  name="idCard" value="${student.idCard }"   /></td>
						</tr>
						<tr>
							<td>父亲联系方式：</td>
							<td><input type="text" id="fatTelNum"  name="fatTelNum" value="${student.fatTelNum }"   /></td>
						</tr>
						<tr>
							<td>母亲联系方式：</td>
							<td><input type="text" id="motTelNum"  name="motTelNum" value="${student.motTelNum }"   /></td>
						</tr>
						<tr>
							<td>家庭住址：</td>
							<td><input type="text" id="address"  name="address" value="${student.address }"   /></td>
						</tr>
						<tr>
							<td>家庭条件：</td>
							<td><input type="text" id="famCon"  name="famCon" value="${student.famCon }"   /></td>
						</tr>
						<tr>
							<td>宿舍楼号：</td>
							<td><input type="text" id="dorBuiNum"  name="dorBuiNum" value="${student.dorBuiNum }"   /></td>
						</tr>
						<tr>
							<td>宿舍号：</td>
							<td><input type="text" id="dorNum"  name="dorNum" value="${student.dorNum }"   /></td>
						</tr>
						<tr>
							<td>床位号：</td>
							<td><input type="text" id="bedNum"  name="bedNum" value="${student.bedNum }"   /></td>
						</tr>
						<tr>
							<td>是否为舍长：</td>
							<td><input type="text" id="don"  name="don" value="${student.don }"   /></td>
						</tr>
						<tr>
							<td>个人打扫时间：</td>
							<td><input type="text" id="cleTim"  name="cleTim" value="${student.cleTim }"   /></td>
						</tr>
						<tr>
							<td>计算机二级：</td>
							<td><input type="text" id="comSecLe"  name="comSecLe" value="${student.comSecLe }"   /></td>
						</tr>
						<tr>
							<td>英语四级：</td>
							<td><input type="text" id="cet4"  name="cet4" value="${student.cet4 }"   /></td>
						</tr>
						<tr>
							<td>英语六级：</td>
							<td><input type="text" id="cet6"  name="cet6" value="${student.cet6 }"   /></td>
						</tr>
						<tr>
							<td>班级职务：</td>
							<td><input type="text" id="classDut"  name="classDut" value="${student.classDut }"   /></td>
						</tr>
						<tr>
							<td>学生会担任职务：</td>
							<td><input type="text" id="stuUniDut"  name="stuUniDut" value="${student.stuUniDut }"   /></td>
						</tr>
						<tr>
							<td>院级协会担任职务：</td>
							<td><input type="text" id="acaUniDut"  name="acaUniDut" value="${student.acaUniDut }"   /></td>
						</tr>
						<tr>
							<td>校级部门担任职务：</td>
							<td><input type="text" id="schUniDut"  name="schUniDut" value="${student.schUniDut }"   /></td>
						</tr>
						<tr>
							<td>参加协会社团：</td>
							<td><input type="text" id="association"  name="association" value="${student.association }"   /></td>
						</tr>
						<tr>
							<td>贫困生建档：</td>
							<td><input type="text" id="pooStuFil"  name="pooStuFil" value="${student.pooStuFil }"   /></td>
						</tr>
						<tr>
							<td>考研意向：</td>
							<td><input type="text" id="pubMed"  name="pubMed" value="${student.pubMed }"   /></td>
						</tr>
						<tr>
							<td>违章物品：</td>
							<td><input type="text" id="illtems"  name="illtems" value="${student.illtems }"   /></td>
						</tr>
						<tr>
							<td>晚归次数：</td>
							<td><input type="text" id="laterTim"  name="laterTim" value="${student.laterTim }"   /></td>
						</tr>
						<tr>
							<td>迟到早退次数：</td>
							<td><input type="text" id="latEarTim"  name="latEarTim" value="${student.latEarTim }"   /></td>
						</tr>
						<tr>
							<td>早操迟到次数：</td>
							<td><input type="text" id="latMorTim"  name="latMorTim" value="${student.latMorTim }"   /></td>
						</tr>
						<tr>
							<td>早操旷操次数：</td>
							<td><input type="text" id="noMorTim"  name="noMorTim" value="${student.noMorTim }"   /></td>
						</tr>
						<tr>
							<td>通报批评情况：</td>
							<td><input type="text" id="criSit"  name="criSit" value="${student.criSit }"   /></td>
						</tr>
						<tr>
							<td>处分情况：</td>
							<td><input type="text" id="punSit"  name="punSit" value="${student.punSit }"   /></td>
						</tr>
						<tr>
							<td>电脑品牌型号：</td>
							<td><input type="text" id="comModel"  name="comModel" value="${student.comModel }"   /></td>
						</tr>
						<tr>
							<td>电脑无线网卡Mac地址：</td>
							<td><input type="text" id="comWifMac"  name="comWifMac" value="${student.comWifMac }"   /></td>
						</tr>
						<tr>
							<td>电脑有线网卡Mac地址：</td>
							<td><input type="text" id="comWirMac"  name="comWirMac" value="${student.comWirMac }"   /></td>
						</tr>
						<tr>
							<td>疾病史：</td>
							<td><input type="text" id="disHis"  name="disHis" value="${student.disHis }"   /></td>
						</tr>
						
						
					</table>
					<div align="center">
						<input type="submit" class="btn btn-primary" value="保存"/>
						&nbsp;<button class="btn btn-primary" type="button" onclick="javascript:window.location='student'">返回</button>
					</div>
					<div align="center">
						<font id="error" color="red">${error }</font>
					</div>
			</div>
		</form>
</div>