package com.hospital.declaration;

public class MedicinesDeclaration
{
	// For PatientMedicines
	
	private int patientId; // Again
	
	
	private int medicineId;                
	private String medicineName;
	private int medicineQuantity;
	private int medicineRate;
	private int medicineAmount;
	
	private int totalMedicineAmount;
	// For MedicineMaster
	
	private int med_Id;                
	private String med_Name;
	private int med_Quantity;
	private int med_Rate;
	
	// PatientId Again
	
	public int getPatientId() {
		return patientId;
	}
	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}
	
	// Getters and Setters for PatientMedicines
	
	public int getMedicineId() {
		return medicineId;
	}
	public void setMedicineId(int medicineId) {
		this.medicineId = medicineId;
	}
	public String getMedicineName() {
		return medicineName;
	}
	public void setMedicineName(String medicineName) {
		this.medicineName = medicineName;
	}
	public int getMedicineQuantity() {
		return medicineQuantity;
	}
	public void setMedicineQuantity(int medicineQuantity) {
		this.medicineQuantity = medicineQuantity;
	}
	public int getMedicineRate() {
		return medicineRate;
	}
	public void setMedicineRate(int medicineRate) {
		this.medicineRate = medicineRate;
	}
	public int getMedicineAmount() {
		return medicineAmount;
	}
	public void setMedicineAmount(int medicineAmount) {
		this.medicineAmount = medicineAmount;
	}
	
	// Getters and Setters for MedicineMaster
	
	public int getMed_Id() {
		return med_Id;
	}
	public void setMed_Id(int med_Id) {
		this.med_Id = med_Id;
	}
	
	public String getMed_Name() {
		return med_Name;
	}
	public void setMed_Name(String med_Name) {
		this.med_Name = med_Name;
	}
	
	public int getMed_Quantity() {
		return med_Quantity;
	}
	public void setMed_Quantity(int med_Quantity) {
		this.med_Quantity = med_Quantity;
	}
	
	public int getMed_Rate() {
		return med_Rate;
	}
	public void setMed_Rate(int med_Rate) {
		this.med_Rate = med_Rate;
	}
	public int getTotalMedicineAmount() {
		return totalMedicineAmount;
	}
	public void setTotalMedicineAmount(int totalMedicineAmount) {
		this.totalMedicineAmount = totalMedicineAmount;
	}
	
	
		
	
	
}
