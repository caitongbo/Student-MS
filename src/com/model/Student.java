package com.model;

public class Student {
	private int id;
	private String userName;
	private String password;
	private String grade;
	private String name;
	private String stuId;
	private String teacher;
	private String sex;
	private String hobby;
	private String specialty;
	private String natPlace;
	private String ofPlace;
	private String nation;
	private String status;
	private String qq;
	private String telNumber;
	private String phoModel;
	private String phoImei;
	private String mail;
	private String weiChat;
	private String idCard;
	private String fatTelNum;
	private String motTelNum;
	private String address;
	private String famCon;
	private String dorBuiNum;
	private String dorNum;
	private String bedNum;
	private String don;
	private String cleTim;
	private String comSecLe;
	private String cet4;
	private String cet6;
	private String classDut;
	private String stuUniDut;
	private String acaUniDut;
	private String schUniDut;
	private String association;
	private String pooStuFil;
	private String pubMed;
	private String illtems;
	private String laterTim;
	private String latEarTim;
	private String latMorTim;
	private String noMorTim;
	private String criSit;
	private String punSit;
	private String comModel;
	private String comWifMac;
	private String comWirMac;
	private String disHis;
	
	public Student() {
	}
	
	public Student(String userName, String password) {
		this.stuId = userName;
		this.password = password;
	}
	
	
	public Student(String password,String grade,String name,String stuId,String teacher,String sex,String hobby,String specialty,String natPlace,String ofPlace,String nation,String status,String qq,String telNumber,String phoModel,String phoImei,String mail,String weiChat,String idCard,String fatTelNum,String motTelNum,String address,String famCon,String dorBuiNum,String dorNum,String bedNum,String don,String cleTim,String comSecLe,String cet4,String cet6,String classDut,String stuUniDut,String acaUniDut,String schUniDut,String association,String pooStuFil,String pubMed,String illtems,String laterTim,String latEarTim,String latMorTim,String noMorTim,String criSit,String punSit,String comModel,String comWifMac,String comWirMac,String disHis) {
				this.id=id;		
				this.userName=userName;
				this.password=password;
				this.grade=grade;
				this.name=name;
				this.stuId=stuId;
				this.teacher=teacher;
				this.sex=sex;
				this.hobby=hobby;
				this.specialty=specialty;
				this.natPlace=natPlace;
				this.ofPlace=ofPlace;
				this.nation=nation;
				this.status=status;
				this.qq=qq;
				this.telNumber=telNumber;
				this.phoModel=phoModel;
				this.phoImei=phoImei;
				this.mail=mail;
				this.weiChat=weiChat;
				this.idCard=idCard;
				this.fatTelNum=fatTelNum;
				this.motTelNum=motTelNum;
				this.address=address;
				this.famCon=famCon;
				this.dorBuiNum=dorBuiNum;
				this.dorNum=dorNum;
				this.bedNum=bedNum;
				this.don=don;
				this.cleTim=cleTim;
				this.comSecLe=comSecLe;
				this.cet4=cet4;
				this.cet6=cet6;
				this.classDut=classDut;
				this.stuUniDut=stuUniDut;
				this.acaUniDut=acaUniDut;
				this.schUniDut=schUniDut;
				this.association=association;
				this.pooStuFil=pooStuFil;
				this.pubMed=pubMed;
				this.illtems=illtems;
				this.laterTim=laterTim;
				this.latEarTim=latEarTim;
				this.latMorTim=latMorTim;
				this.noMorTim=noMorTim;
				this.criSit=criSit;
				this.punSit=punSit;
				this.comModel=comModel;
				this.comWifMac=comWifMac;
				this.comWirMac=comWirMac;
				this.disHis=disHis;
				
	}

	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}
	public String getGrade(){
		return grade;
	}
	public void setGrade(String grade){
		this.grade=grade;
	}
	
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name=name;
	}
	public String getStuId(){
		return stuId;
	}
	public void setStuId(String stuId){
		this.stuId=stuId;
	}
	public String getTeacher(){
		return teacher;
	}
	public void setTeacher(String teacher){
		this.teacher=teacher;
	}
	public String getSex(){
		return sex;
	}
	public void setSex(String sex){
		this.sex=sex;
	}
	public String getHobby(){
		return hobby;
	}
	public void setHobby(String hobby){
		this.hobby=hobby;
	}
	public String getSpecialty(){
		return specialty;
	}
	public void setSpecialty(String specialty){
		this.specialty=specialty;
	}
	public String getNatPlace(){
		return natPlace;
	}
	public void setNatPlace(String natPlace){
		this.natPlace=natPlace;
	}
	public String getOfPlace(){
		return ofPlace;
	}
	public void setOfPlace(String ofPlace){
		this.ofPlace=ofPlace;
	}
	public String getNation(){
		return nation;
	}
	public void setNation(String nation){
		this.nation=nation;
	}
	public String getStatus(){
		return status;
	}
	public void setStatus(String status){
		this.status=status;
	}
	public String getQq(){
		return qq;
	}
	public void setQq(String qq){
		this.qq=qq;
	}
	public String getTelNumber(){
		return telNumber;
	}
	public void setTelNumber(String telNumber){
		this.telNumber=telNumber;
	}
	public String getPhoModel(){
		return phoModel;
	}
	public void setPhoModel(String phoModel){
		this.phoModel=phoModel;
	}
	public String getPhoImei(){
		return phoImei;
	}
	public void setPhoImei(String phoImei){
		this.phoImei=phoImei;
	}
	public String getMail(){
		return mail;
	}
	public void setMail(String mail){
		this.mail=mail;
	}
	public String getWeiChat(){
		return weiChat;
	}
	public void setWeiChat(String weiChat){
		this.weiChat=weiChat;
	}
	public String getIdCard(){
		return idCard;
	}
	public void setIdCard(String idCard){
		this.idCard=idCard;
	}
	public String getFatTelNum(){
		return fatTelNum;
	}
	public void setFatTelNum(String fatTelNum){
		this.fatTelNum=fatTelNum;
	}
	public String getMotTelNum(){
		return motTelNum;
	}
	public void setMotTelNum(String motTelNum){
		this.motTelNum=motTelNum;
	}
	public String getAddress(){
		return address;
	}
	public void setAddress(String address){
		this.address=address;
	}
	public String getFamCon(){
		return famCon;
	}
	public void setFamCon(String famCon){
		this.famCon=famCon;
	}
	public String getDorBuiNum(){
		return dorBuiNum;
	}
	public void setDorBuiNum(String dorBuiNum){
		this.dorBuiNum=dorBuiNum;
	}
	public String getDorNum(){
		return dorNum;
	}
	public void setDorNum(String dorNum){
		this.dorNum=dorNum;
	}
	public String getBedNum(){
		return bedNum;
	}
	public void setBedNum(String bedNum){
		this.bedNum=bedNum;
	}
	public String getDon(){
		return don;
	}
	public void setDon(String don){
		this.don=don;
	}
	public String getCleTim(){
		return cleTim;
	}
	public void setCleTim(String cleTim){
		this.cleTim=cleTim;
	}
	public String getComSecLe(){
		return comSecLe;
	}
	public void setComSecLe(String comSecLe){
		this.comSecLe=comSecLe;
	}
	public String getCet4(){
		return cet4;
	}
	public void setCet4(String cet4){
		this.cet4=cet4;
	}
	public String getCet6(){
		return cet6;
	}
	public void setCet6(String cet6){
		this.cet6=cet6;
	}
	public String getClassDut(){
		return classDut;
	}
	public void setClassDut(String classDut){
		this.classDut=classDut;
	}
	public String getStuUniDut(){
		return stuUniDut;
	}
	public void setStuUniDut(String stuUniDut){
		this.stuUniDut=stuUniDut;
	}
	public String getAcaUniDut(){
		return acaUniDut;
	}
	public void setAcaUniDut(String acaUniDut){
		this.acaUniDut=acaUniDut;
	}
	public String getSchUniDut(){
		return schUniDut;
	}
	public void setSchUniDut(String schUniDut){
		this.schUniDut=schUniDut;
	}
	public String getAssociation(){
		return association;
	}
	public void setAssociation(String association){
		this.association=association;
	}
	public String getPooStuFil(){
		return pooStuFil;
	}
	public void setPooStuFil(String pooStuFil){
		this.pooStuFil=pooStuFil;
	}
	public String getPubMed(){
		return pubMed;
	}
	public void setPubMed(String pubMed){
		this.pubMed=pubMed;
	}
	public String getIlltems(){
		return illtems;
	}
	public void setIlltems(String illtems){
		this.illtems=illtems;
	}
	public String getLaterTim(){
		return laterTim;
	}
	public void setLaterTim(String laterTim){
		this.laterTim=laterTim;
	}
	public String getLatEarTim(){
		return latEarTim;
	}
	public void setLatEarTim(String latEarTim){
		this.latEarTim=latEarTim;
	}
	public String getLatMorTim(){
		return latMorTim;
	}
	public void setLatMorTim(String latMorTim){
		this.latMorTim=latMorTim;
	}
	public String getNoMorTim(){
		return noMorTim;
	}
	public void setNoMorTim(String noMorTim){
		this.noMorTim=noMorTim;
	}
	public String getCriSit(){
		return criSit;
	}
	public void setCriSit(String criSit){
		this.criSit=criSit;
	}
	public String getPunSit(){
		return punSit;
	}
	public void setPunSit(String punSit){
		this.punSit=punSit;
	}
	public String getComModel(){
		return comModel;
	}
	public void setComModel(String comModel){
		this.comModel=comModel;
	}
	public String getComWifMac(){
		return comWifMac;
	}
	public void setComWifMac(String comWifMac){
		this.comWifMac=comWifMac;
	}
	public String getComWirMac(){
		return comWirMac;
	}
	public void setComWirMac(String comWirMac){
		this.comWirMac=comWirMac;
	}
	public String getDisHis(){
		return disHis;
	}
	public void setDisHis(String disHis){
		this.disHis=disHis;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
