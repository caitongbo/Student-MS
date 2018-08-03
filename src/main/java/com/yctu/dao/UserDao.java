package com.yctu.dao;

import com.yctu.model.Admin;
import com.yctu.model.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

	public Admin Login(Connection con, Admin admin)throws Exception {
		Admin resultAdmin = null;
		String sql = "select * from t_admin where userName=? and password=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, admin.getUserName());
		pstmt.setString(2, admin.getPassword());
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			resultAdmin = new Admin();
			resultAdmin.setAdminId(rs.getInt("adminId"));
			resultAdmin.setUserName(rs.getString("userName"));
			resultAdmin.setPassword(rs.getString("password"));
			resultAdmin.setName(rs.getString("name"));
			resultAdmin.setSex(rs.getString("sex"));
			resultAdmin.setTel(rs.getString("tel"));
		}
		return resultAdmin;
	}
	
	public Student Login(Connection con, Student student)throws Exception {
		Student resultStudent = null;
		String sql = "select * from t_student where stuId=? and password=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, student.getStuId());
		pstmt.setString(2, student.getPassword());
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			resultStudent = new Student();
			resultStudent.setPassword(rs.getString("password"));
			resultStudent.setGrade(rs.getString("grade"));
			resultStudent.setName(rs.getString("name"));
			resultStudent.setStuId(rs.getString("stuId"));
			resultStudent.setTeacher(rs.getString("teacher"));
			resultStudent.setSex(rs.getString("sex"));
			resultStudent.setHobby(rs.getString("hobby"));
			resultStudent.setSpecialty(rs.getString("specialty"));
			resultStudent.setNatPlace(rs.getString("natPlace"));
			resultStudent.setOfPlace(rs.getString("ofPlace"));
			resultStudent.setNation(rs.getString("nation"));
			resultStudent.setStatus(rs.getString("status"));
			resultStudent.setQq(rs.getString("qq"));
			resultStudent.setTelNumber(rs.getString("telNumber"));
			resultStudent.setPhoModel(rs.getString("phoModel"));
			resultStudent.setPhoImei(rs.getString("phoImei"));
			resultStudent.setMail(rs.getString("mail"));
			resultStudent.setWeiChat(rs.getString("weiChat"));
			resultStudent.setIdCard(rs.getString("idCard"));
			resultStudent.setFatTelNum(rs.getString("fatTelNum"));
			resultStudent.setMotTelNum(rs.getString("motTelNum"));
			resultStudent.setAddress(rs.getString("address"));
			resultStudent.setFamCon(rs.getString("famCon"));
			resultStudent.setDorBuiNum(rs.getString("dorBuiNum"));
			resultStudent.setDorNum(rs.getString("dorNum"));
			resultStudent.setBedNum(rs.getString("bedNum"));
			resultStudent.setDon(rs.getString("don"));
			resultStudent.setCleTim(rs.getString("cleTim"));
			resultStudent.setComSecLe(rs.getString("comSecLe"));
			resultStudent.setCet4(rs.getString("cet4"));
			resultStudent.setCet6(rs.getString("cet6"));
			resultStudent.setClassDut(rs.getString("classDut"));
			resultStudent.setStuUniDut(rs.getString("stuUniDut"));
			resultStudent.setAcaUniDut(rs.getString("acaUniDut"));
			resultStudent.setSchUniDut(rs.getString("schUniDut"));
			resultStudent.setAssociation(rs.getString("association"));
			resultStudent.setPooStuFil(rs.getString("pooStuFil"));
			resultStudent.setPubMed(rs.getString("pubMed"));
			resultStudent.setIlltems(rs.getString("illtems"));
			resultStudent.setLaterTim(rs.getString("laterTim"));
			resultStudent.setLatEarTim(rs.getString("latEarTim"));
			resultStudent.setLatMorTim(rs.getString("latMorTim"));
			resultStudent.setNoMorTim(rs.getString("noMorTim"));
			resultStudent.setCriSit(rs.getString("criSit"));
			resultStudent.setPunSit(rs.getString("punSit"));
			resultStudent.setComModel(rs.getString("comModel"));
			resultStudent.setComWifMac(rs.getString("comWifMac"));
			resultStudent.setComWirMac(rs.getString("comWirMac"));
			resultStudent.setDisHis(rs.getString("disHis"));

		}
		return resultStudent;
	}
	
	public int adminUpdate(Connection con, String adminId, String password)throws Exception {
		String sql = "update t_admin set password=? where adminId=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, password);
		pstmt.setString(2, adminId);
		return pstmt.executeUpdate();
	}
	public int adminUpdate(Connection con, int adminId, String password)throws Exception {
		String sql = "update t_admin set password=? where adminId=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, password);
		pstmt.setInt(2, adminId);
		return pstmt.executeUpdate();
	}
	
	public int studentUpdate(Connection con, int studentId, String password)throws Exception {
		String sql = "update t_student set password=? where id=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, password);
		pstmt.setInt(2, studentId);
		return pstmt.executeUpdate();
	}
	
}
