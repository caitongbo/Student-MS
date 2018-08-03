package com.yctu.dao;

import com.yctu.model.PageBean;
import com.yctu.model.Student;
import com.yctu.util.StringUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {	
	public List<Student> studentList(Connection con, PageBean pageBean, Student s_student)throws Exception {
		List<Student> studentList = new ArrayList<Student>();
		StringBuffer sb = new StringBuffer("select * from t_student t1");
		if(StringUtil.isNotEmpty(s_student.getName())) {
			sb.append(" and t1.name like '%"+s_student.getName()+"%'");
		} else if(StringUtil.isNotEmpty(s_student.getStuId())) {
			sb.append(" and t1.id like '%"+s_student.getStuId()+"%'");
		} 
		if(pageBean != null) {
			sb.append(" limit "+pageBean.getStart()+","+pageBean.getPageSize());
		}
		PreparedStatement pstmt = con.prepareStatement(sb.toString());
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			Student student=new Student();
			student.setId(rs.getInt("id"));
			student.setGrade(rs.getString("grade"));
			student.setName(rs.getString("name"));
			student.setStuId(rs.getString("stuId"));
			student.setTeacher(rs.getString("teacher"));
			student.setSex(rs.getString("sex"));
			student.setHobby(rs.getString("hobby"));
			student.setSpecialty(rs.getString("specialty"));
			student.setNatPlace(rs.getString("natPlace"));
			student.setOfPlace(rs.getString("ofPlace"));
			student.setNation(rs.getString("nation"));
			student.setStatus(rs.getString("status"));
			student.setQq(rs.getString("qq"));
			student.setTelNumber(rs.getString("telNumber"));
			student.setPhoModel(rs.getString("phoModel"));
			student.setPhoImei(rs.getString("phoImei"));
			student.setMail(rs.getString("mail"));
			student.setWeiChat(rs.getString("weiChat"));
			student.setIdCard(rs.getString("idCard"));
			student.setFatTelNum(rs.getString("fatTelNum"));
			student.setMotTelNum(rs.getString("motTelNum"));
			student.setAddress(rs.getString("address"));
			student.setFamCon(rs.getString("famCon"));
			student.setDorBuiNum(rs.getString("dorBuiNum"));
			student.setDorNum(rs.getString("dorNum"));
			student.setBedNum(rs.getString("bedNum"));
			student.setDon(rs.getString("don"));
			student.setCleTim(rs.getString("cleTim"));
			student.setComSecLe(rs.getString("comSecLe"));
			student.setCet4(rs.getString("cet4"));
			student.setCet6(rs.getString("cet6"));
			student.setClassDut(rs.getString("classDut"));
			student.setStuUniDut(rs.getString("stuUniDut"));
			student.setAcaUniDut(rs.getString("acaUniDut"));
			student.setSchUniDut(rs.getString("schUniDut"));
			student.setAssociation(rs.getString("association"));
			student.setPooStuFil(rs.getString("pooStuFil"));
			student.setPubMed(rs.getString("pubMed"));
			student.setIlltems(rs.getString("illtems"));
			student.setLaterTim(rs.getString("laterTim"));
			student.setLatEarTim(rs.getString("latEarTim"));
			student.setLatMorTim(rs.getString("latMorTim"));
			student.setNoMorTim(rs.getString("noMorTim"));
			student.setCriSit(rs.getString("criSit"));
			student.setPunSit(rs.getString("punSit"));
			student.setComModel(rs.getString("comModel"));
			student.setComWifMac(rs.getString("comWifMac"));
			student.setComWirMac(rs.getString("comWirMac"));
			student.setDisHis(rs.getString("disHis"));
			student.setPassword(rs.getString("password"));
			studentList.add(student);
		}
		return studentList;
	}
	
	public static Student getNameById(Connection con, String studentNumber, int dorBuiNum)throws Exception {
		String sql = "select * from t_student t1 where t1.id=? and t1.dorBuiNum=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, studentNumber);
		pstmt.setInt(2, dorBuiNum);
		ResultSet rs=pstmt.executeQuery();
		Student student = new Student();
		if(rs.next()) {
			student.setName(rs.getString("name"));
			student.setDorNum(rs.getString("dormName"));
		}
		return student;
	}
	
	public boolean haveNameByNumber(Connection con, String studentNumber)throws Exception {
		String sql = "select * from t_student t1 where t1.id=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, studentNumber);
		ResultSet rs=pstmt.executeQuery();
		Student student = new Student();
		if(rs.next()) {
			student.setName(rs.getString("name"));
			student.setDorBuiNum(rs.getString("dorBuiNum"));
			student.setDorNum(rs.getString("dorNum"));
			return true;
		}
		return false;
	}
	
	public List<Student> studentListWithBuild(Connection con, Student s_student, int buildId)throws Exception {
		List<Student> studentList = new ArrayList<Student>();
		StringBuffer sb = new StringBuffer("select * from t_student t1");
		if(StringUtil.isNotEmpty(s_student.getName())) {
			sb.append(" and t1.name like '%"+s_student.getName()+"%'");
		} else if(StringUtil.isNotEmpty(s_student.getStuId())) {
			sb.append(" and t1.stuId like '%"+s_student.getId()+"%'");
		} else if(StringUtil.isNotEmpty(s_student.getDorNum())) {
			sb.append(" and t1.dorNum like '%"+s_student.getDorNum()+"%'");
		}
		sb.append(" and t1.dorBuiNum="+buildId);
		PreparedStatement pstmt = con.prepareStatement(sb.toString().replaceFirst("and", "where"));
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			Student student=new Student();
			student.setId(rs.getInt("id"));
			student.setGrade(rs.getString("grade"));
			student.setName(rs.getString("name"));
			student.setStuId(rs.getString("stuId"));
			student.setTeacher(rs.getString("teacher"));
			student.setSex(rs.getString("sex"));
			student.setHobby(rs.getString("hobby"));
			student.setSpecialty(rs.getString("specialty"));
			student.setNatPlace(rs.getString("natPlace"));
			student.setOfPlace(rs.getString("ofPlace"));
			student.setNation(rs.getString("nation"));
			student.setStatus(rs.getString("status"));
			student.setQq(rs.getString("qq"));
			student.setTelNumber(rs.getString("telNumber"));
			student.setPhoModel(rs.getString("phoModel"));
			student.setPhoImei(rs.getString("phoImei"));
			student.setMail(rs.getString("mail"));
			student.setWeiChat(rs.getString("weiChat"));
			student.setIdCard(rs.getString("idCard"));
			student.setFatTelNum(rs.getString("fatTelNum"));
			student.setMotTelNum(rs.getString("motTelNum"));
			student.setAddress(rs.getString("address"));
			student.setFamCon(rs.getString("famCon"));
			student.setDorBuiNum(rs.getString("dorBuiNum"));
			student.setDorNum(rs.getString("dorNum"));
			student.setBedNum(rs.getString("bedNum"));
			student.setDon(rs.getString("don"));
			student.setCleTim(rs.getString("cleTim"));
			student.setComSecLe(rs.getString("comSecLe"));
			student.setCet4(rs.getString("cet4"));
			student.setCet6(rs.getString("cet6"));
			student.setClassDut(rs.getString("classDut"));
			student.setStuUniDut(rs.getString("stuUniDut"));
			student.setAcaUniDut(rs.getString("acaUniDut"));
			student.setSchUniDut(rs.getString("schUniDut"));
			student.setAssociation(rs.getString("association"));
			student.setPooStuFil(rs.getString("pooStuFil"));
			student.setPubMed(rs.getString("pubMed"));
			student.setIlltems(rs.getString("illtems"));
			student.setLaterTim(rs.getString("laterTim"));
			student.setLatEarTim(rs.getString("latEarTim"));
			student.setLatMorTim(rs.getString("latMorTim"));
			student.setNoMorTim(rs.getString("noMorTim"));
			student.setCriSit(rs.getString("criSit"));
			student.setPunSit(rs.getString("punSit"));
			student.setComModel(rs.getString("comModel"));
			student.setComWifMac(rs.getString("comWifMac"));
			student.setComWirMac(rs.getString("comWirMac"));
			student.setDisHis(rs.getString("disHis"));
			studentList.add(student);
		}
		return studentList;
	}
	
	public int studentCount(Connection con, Student s_student)throws Exception {
		StringBuffer sb = new StringBuffer("select count(*) as total from t_student t1");
		if(StringUtil.isNotEmpty(s_student.getName())) {
			sb.append(" and t1.name like '%"+s_student.getName()+"%'");
		} else if(StringUtil.isNotEmpty(s_student.getStuId())) {
			sb.append(" and t1.stuId like '%"+s_student.getId()+"%'");
		} else if(StringUtil.isNotEmpty(s_student.getDorNum())) {
			sb.append(" and t1.dorNum like '%"+s_student.getDorNum()+"%'");
		}
		if(s_student.getDorBuiNum()!=null) {
			sb.append(" and t1.dorBuiNum="+s_student.getDorBuiNum());
		}
		PreparedStatement pstmt = con.prepareStatement(sb.toString().replaceFirst("and", "where"));
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			return rs.getInt("total");
		} else {
			return 0;
		}
	}
	public List<Student> studentListWithNumber(Connection con, Student s_person, String studentNumber)throws Exception {
		List<Student> studentList = new ArrayList<Student>();
		StringBuffer sb = new StringBuffer("select * from t_student t1");
		
		if(StringUtil.isNotEmpty(studentNumber)) {
			sb.append(" and t1.stuId ="+studentNumber);
		} 

		PreparedStatement pstmt = con.prepareStatement(sb.toString().replaceFirst("and", "where"));
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			Student student=new Student();
			student.setPassword(rs.getString("password"));
			student.setGrade(rs.getString("grade"));
			student.setName(rs.getString("name"));
			student.setStuId(rs.getString("stuId"));
			student.setTeacher(rs.getString("teacher"));
			student.setSex(rs.getString("sex"));
			student.setHobby(rs.getString("hobby"));
			student.setSpecialty(rs.getString("specialty"));
			student.setNatPlace(rs.getString("natPlace"));
			student.setOfPlace(rs.getString("ofPlace"));
			student.setNation(rs.getString("nation"));
			student.setStatus(rs.getString("status"));
			student.setQq(rs.getString("qq"));
			student.setTelNumber(rs.getString("telNumber"));
			student.setPhoModel(rs.getString("phoModel"));
			student.setPhoImei(rs.getString("phoImei"));
			student.setMail(rs.getString("mail"));
			student.setWeiChat(rs.getString("weiChat"));
			student.setIdCard(rs.getString("idCard"));
			student.setFatTelNum(rs.getString("fatTelNum"));
			student.setMotTelNum(rs.getString("motTelNum"));
			student.setAddress(rs.getString("address"));
			student.setFamCon(rs.getString("famCon"));
			student.setDorBuiNum(rs.getString("dorBuiNum"));
			student.setDorNum(rs.getString("dorNum"));
			student.setBedNum(rs.getString("bedNum"));
			student.setDon(rs.getString("don"));
			student.setCleTim(rs.getString("cleTim"));
			student.setComSecLe(rs.getString("comSecLe"));
			student.setCet4(rs.getString("cet4"));
			student.setCet6(rs.getString("cet6"));
			student.setClassDut(rs.getString("classDut"));
			student.setStuUniDut(rs.getString("stuUniDut"));
			student.setAcaUniDut(rs.getString("acaUniDut"));
			student.setSchUniDut(rs.getString("schUniDut"));
			student.setAssociation(rs.getString("association"));
			student.setPooStuFil(rs.getString("pooStuFil"));
			student.setPubMed(rs.getString("pubMed"));
			student.setIlltems(rs.getString("illtems"));
			student.setLaterTim(rs.getString("laterTim"));
			student.setLatEarTim(rs.getString("latEarTim"));
			student.setLatMorTim(rs.getString("latMorTim"));
			student.setNoMorTim(rs.getString("noMorTim"));
			student.setCriSit(rs.getString("criSit"));
			student.setPunSit(rs.getString("punSit"));
			student.setComModel(rs.getString("comModel"));
			student.setComWifMac(rs.getString("comWifMac"));
			student.setComWirMac(rs.getString("comWirMac"));
			student.setDisHis(rs.getString("disHis"));
			
			studentList.add(student);
		}
		return studentList;
	
	}
		
	public Student studentShow(Connection con, String studentId)throws Exception {
		String sql = "select * from t_student t1 where t1.id=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, studentId);
		ResultSet rs=pstmt.executeQuery();
		Student student = new Student();
		if(rs.next()) {
			student.setId(rs.getInt("id"));
			student.setGrade(rs.getString("grade"));
			student.setName(rs.getString("name"));
			student.setStuId(rs.getString("stuId"));
			student.setTeacher(rs.getString("teacher"));
			student.setSex(rs.getString("sex"));
			student.setHobby(rs.getString("hobby"));
			student.setSpecialty(rs.getString("specialty"));
			student.setNatPlace(rs.getString("natPlace"));
			student.setOfPlace(rs.getString("ofPlace"));
			student.setNation(rs.getString("nation"));
			student.setStatus(rs.getString("status"));
			student.setQq(rs.getString("qq"));
			student.setTelNumber(rs.getString("telNumber"));
			student.setPhoModel(rs.getString("phoModel"));
			student.setPhoImei(rs.getString("phoImei"));
			student.setMail(rs.getString("mail"));
			student.setWeiChat(rs.getString("weiChat"));
			student.setIdCard(rs.getString("idCard"));
			student.setFatTelNum(rs.getString("fatTelNum"));
			student.setMotTelNum(rs.getString("motTelNum"));
			student.setAddress(rs.getString("address"));
			student.setFamCon(rs.getString("famCon"));
			student.setDorBuiNum(rs.getString("dorBuiNum"));
			student.setDorNum(rs.getString("dorNum"));
			student.setBedNum(rs.getString("bedNum"));
			student.setDon(rs.getString("don"));
			student.setCleTim(rs.getString("cleTim"));
			student.setComSecLe(rs.getString("comSecLe"));
			student.setCet4(rs.getString("cet4"));
			student.setCet6(rs.getString("cet6"));
			student.setClassDut(rs.getString("classDut"));
			student.setStuUniDut(rs.getString("stuUniDut"));
			student.setAcaUniDut(rs.getString("acaUniDut"));
			student.setSchUniDut(rs.getString("schUniDut"));
			student.setAssociation(rs.getString("association"));
			student.setPooStuFil(rs.getString("pooStuFil"));
			student.setPubMed(rs.getString("pubMed"));
			student.setIlltems(rs.getString("illtems"));
			student.setLaterTim(rs.getString("laterTim"));
			student.setLatEarTim(rs.getString("latEarTim"));
			student.setLatMorTim(rs.getString("latMorTim"));
			student.setNoMorTim(rs.getString("noMorTim"));
			student.setCriSit(rs.getString("criSit"));
			student.setPunSit(rs.getString("punSit"));
			student.setComModel(rs.getString("comModel"));
			student.setComWifMac(rs.getString("comWifMac"));
			student.setComWirMac(rs.getString("comWirMac"));
			student.setDisHis(rs.getString("disHis"));
		}
		return student;
	}
	
	public int studentAdd(Connection con, Student student)throws Exception {
		String sql = "insert into t_student values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, student.getPassword());
		pstmt.setString(2, student.getGrade());
		pstmt.setString(3, student.getName());
		pstmt.setString(4, student.getStuId());
		pstmt.setString(5, student.getTeacher());
		pstmt.setString(6, student.getSex());
		pstmt.setString(7, student.getHobby());
		pstmt.setString(8, student.getSpecialty());
		pstmt.setString(9, student.getNatPlace());
		pstmt.setString(10, student.getOfPlace());
		pstmt.setString(11, student.getNation());
		pstmt.setString(12, student.getStatus());
		pstmt.setString(13, student.getQq());
		pstmt.setString(14, student.getTelNumber());
		pstmt.setString(15, student.getPhoModel());
		pstmt.setString(16, student.getPhoImei());
		pstmt.setString(17, student.getMail());
		pstmt.setString(18, student.getWeiChat());
		pstmt.setString(19, student.getIdCard());
		pstmt.setString(20, student.getFatTelNum());
		pstmt.setString(21, student.getMotTelNum());
		pstmt.setString(22, student.getAddress());
		pstmt.setString(23, student.getFamCon());
		pstmt.setString(24, student.getDorBuiNum());
		pstmt.setString(25, student.getDorNum());
		pstmt.setString(26, student.getBedNum());
		pstmt.setString(27, student.getDon());
		pstmt.setString(28, student.getCleTim());
		pstmt.setString(29, student.getComSecLe());
		pstmt.setString(30, student.getCet4());
		pstmt.setString(31, student.getCet6());
		pstmt.setString(32, student.getClassDut());
		pstmt.setString(33, student.getStuUniDut());
		pstmt.setString(34, student.getAcaUniDut());
		pstmt.setString(35, student.getSchUniDut());
		pstmt.setString(36, student.getAssociation());
		pstmt.setString(37, student.getPooStuFil());
		pstmt.setString(38, student.getPubMed());
		pstmt.setString(39, student.getIlltems());
		pstmt.setString(40, student.getLaterTim());
		pstmt.setString(41, student.getLatEarTim());
		pstmt.setString(42, student.getLatMorTim());
		pstmt.setString(43, student.getNoMorTim());
		pstmt.setString(44, student.getCriSit());
		pstmt.setString(45, student.getPunSit());
		pstmt.setString(46, student.getComModel());
		pstmt.setString(47, student.getComWifMac());
		pstmt.setString(48, student.getComWirMac());
		pstmt.setString(49, student.getDisHis());
		return pstmt.executeUpdate();
	}
	
	public int studentDelete(Connection con, String id)throws Exception {
		String sql = "delete from t_student where id=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		return pstmt.executeUpdate();
	}
	
	public int studentUpdate(Connection con, Student student)throws Exception {
		String sql = "update t_student set grade=?,name=?,stuId=?,teacher=?,sex=?,hobby=?,specialty=?,natPlace=?,ofPlace=?,nation=?,status=?,qq=?,telNumber=?,phoModel=?,phoImei=?,mail=?,weiChat=?,idCard=?,fatTelNum=?,motTelNum=?,address=?,famCon=?,dorBuiNum=?,dorNum=?,bedNum=?,don=?,cleTim=?,comSecLe=?,cet4=?,cet6=?,classDut=?,stuUniDut=?,acaUniDut=?,schUniDut=?,association=?,pooStuFil=?,pubMed=?,illtems=?,laterTim=?,latEarTim=?,latMorTim=?,noMorTim=?,criSit=?,punSit=?,comModel=?,comWifMac=?,comWirMac=?,disHis=? where id=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, student.getGrade());
		pstmt.setString(2, student.getName());
		pstmt.setString(3, student.getStuId());
		pstmt.setString(4, student.getTeacher());
		pstmt.setString(5, student.getSex());
		pstmt.setString(6, student.getHobby());
		pstmt.setString(7, student.getSpecialty());
		pstmt.setString(8, student.getNatPlace());
		pstmt.setString(9, student.getOfPlace());
		pstmt.setString(10, student.getNation());
		pstmt.setString(11, student.getStatus());
		pstmt.setString(12, student.getQq());
		pstmt.setString(13, student.getTelNumber());
		pstmt.setString(14, student.getPhoModel());
		pstmt.setString(15, student.getPhoImei());
		pstmt.setString(16, student.getMail());
		pstmt.setString(17, student.getWeiChat());
		pstmt.setString(18, student.getIdCard());
		pstmt.setString(19, student.getFatTelNum());
		pstmt.setString(20, student.getMotTelNum());
		pstmt.setString(21, student.getAddress());
		pstmt.setString(22, student.getFamCon());
		pstmt.setString(23, student.getDorBuiNum());
		pstmt.setString(24, student.getDorNum());
		pstmt.setString(25, student.getBedNum());
		pstmt.setString(26, student.getDon());
		pstmt.setString(27, student.getCleTim());
		pstmt.setString(28, student.getComSecLe());
		pstmt.setString(29, student.getCet4());
		pstmt.setString(30, student.getCet6());
		pstmt.setString(31, student.getClassDut());
		pstmt.setString(32, student.getStuUniDut());
		pstmt.setString(33, student.getAcaUniDut());
		pstmt.setString(34, student.getSchUniDut());
		pstmt.setString(35, student.getAssociation());
		pstmt.setString(36, student.getPooStuFil());
		pstmt.setString(37, student.getPubMed());
		pstmt.setString(38, student.getIlltems());
		pstmt.setString(39, student.getLaterTim());
		pstmt.setString(40, student.getLatEarTim());
		pstmt.setString(41, student.getLatMorTim());
		pstmt.setString(42, student.getNoMorTim());
		pstmt.setString(43, student.getCriSit());
		pstmt.setString(44, student.getPunSit());
		pstmt.setString(45, student.getComModel());
		pstmt.setString(46, student.getComWifMac());
		pstmt.setString(47, student.getComWirMac());
		pstmt.setString(48, student.getDisHis());
		pstmt.setInt(49, student.getId());
		return pstmt.executeUpdate();
	}
}
