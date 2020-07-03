package com.hospital.declaration;

public class PatientDeclaration
{
	private int patientId;                         //1
	private int patientSSNId;                      //2
	private String patientName;                    //3
	private int patientAge;                        //4
	private String dateOfAdmission;    //date      //5
	private String typeOfBed;                      //6
	
	private String status;           // New Varibale
	
	private String address;                        //7
	private String state;                          //8
	private String city;                           //9
	
	public int getPatientId() {
		return patientId;
	}
	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}
	public int getPatientSSNId() {
		return patientSSNId;
	}
	public void setPatientSSNId(int patientSSNId) {
		this.patientSSNId = patientSSNId;
	}
	public String getPatientName() {
		return patientName;
	}
	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}
	public int getPatientAge() {
		return patientAge;
	}
	public void setPatientAge(int patientAge) {
		this.patientAge = patientAge;
	}
	public String getDateOfAdmission() {
		return dateOfAdmission;
	}
	public void setDateOfAdmission(String dateOfAdmission) {
		this.dateOfAdmission = dateOfAdmission;
	}
	public String getTypeOfBed() {
		return typeOfBed;
	}
	public void setTypeOfBed(String typeOfBed) {
		this.typeOfBed = typeOfBed;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
}
