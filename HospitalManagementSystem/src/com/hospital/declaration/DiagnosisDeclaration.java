package com.hospital.declaration;

public class DiagnosisDeclaration
{
	// For patient_diagnosis
	private int patientId; 
	private int diagnosisId;
	private String diagnosisName;
	private int diagnosisCharge;
	
	// For diagnosis_master
	private int diag_Id;
	private String diag_Name;
	private int diag_Charge;
	
	public int getPatientId() {
		return patientId;
	}
	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}
	public int getDiagnosisId() {
		return diagnosisId;
	}
	public void setDiagnosisId(int diagnosisId) {
		this.diagnosisId = diagnosisId;
	}
	public String getDiagnosisName() {
		return diagnosisName;
	}
	public void setDiagnosisName(String diagnosisName) {
		this.diagnosisName = diagnosisName;
	}
	public int getDiagnosisCharge() {
		return diagnosisCharge;
	}
	public void setDiagnosisCharge(int diagnosisCharge) {
		this.diagnosisCharge = diagnosisCharge;
	}
	public int getDiag_Id() {
		return diag_Id;
	}
	public void setDiag_Id(int diag_Id) {
		this.diag_Id = diag_Id;
	}
	public String getDiag_Name() {
		return diag_Name;
	}
	public void setDiag_Name(String diag_Name) {
		this.diag_Name = diag_Name;
	}
	public int getDiag_Charge() {
		return diag_Charge;
	}
	public void setDiag_Charge(int diag_Charge) {
		this.diag_Charge = diag_Charge;
	}
	
	
	
}
