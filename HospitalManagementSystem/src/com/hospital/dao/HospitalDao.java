package com.hospital.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.hospital.declaration.DiagnosisDeclaration;
import com.hospital.declaration.MedicinesDeclaration;
import com.hospital.declaration.PatientDeclaration;

public class HospitalDao
{
	static String databaseName= "hospitalmanagement";
	static String url = "jdbc:mysql://localhost:3306/" + databaseName;
	static String username = "ForHospital";
	static String password = "hospital12$";
	
	public static Connection getConnection()  // CONNECTION
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(url,username,password);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
	
	public static int create(PatientDeclaration pd)  // INSERT For Patient
	{
		int status=0;
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("insert into hospital_table (patientSSNId,patientName,patientAge,dateOfAdmission,typeOfBed,address,state,city) values(?,?,?,?,?,?,?,?)");
			
			ps.setInt(1,pd.getPatientSSNId());
			ps.setString(2,pd.getPatientName());
			ps.setInt(3,pd.getPatientAge());
			ps.setString(4,pd.getDateOfAdmission());
			ps.setString(5,pd.getTypeOfBed());		
			ps.setString(6,pd.getAddress());
			ps.setString(7,pd.getState());
			ps.setString(8,pd.getCity());
			
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}
	
	public static int update(PatientDeclaration pd)  // UPDATE For Patient
	{
		int status=0;
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("update hospital_table set patientSSNId=?,patientName=?,patientAge=?,dateOfAdmission=?,typeOfBed=?,address=?,state=?,city=? where patientId=?");
			
			ps.setInt(1,pd.getPatientSSNId());
			ps.setString(2,pd.getPatientName());
			ps.setInt(3,pd.getPatientAge());
			ps.setString(4,pd.getDateOfAdmission());
			ps.setString(5,pd.getTypeOfBed());		
			ps.setString(6,pd.getAddress());
			ps.setString(7,pd.getState());
			ps.setString(8,pd.getCity());
												//where
			ps.setInt(9,pd.getPatientId());
			
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}
	
	public static int delete(PatientDeclaration pd)  // DELETE For Patient
	{
		int status=0;
		
		try
		{
			Connection con = getConnection();
			
			PreparedStatement ps = con.prepareStatement("delete from hospital_table where patientId=?");
			
			ps.setInt(1,pd.getPatientId());  // Deleting record using ID  For Patient
			
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}
	
	public static List<PatientDeclaration> getAllRecords()  // READ
	{
		List<PatientDeclaration> list=new ArrayList<PatientDeclaration>();
	
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("select * from hospital_table");
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{	
				
				PatientDeclaration pd=new PatientDeclaration();
								
				pd.setPatientId(rs.getInt(1));
				pd.setPatientSSNId(rs.getInt(2));
				pd.setPatientName(rs.getString(3));
				pd.setPatientAge(rs.getInt(4));				
				pd.setDateOfAdmission(rs.getString(5));				
				pd.setTypeOfBed(rs.getString(6));
				
				pd.setStatus(rs.getString(7));
				
				pd.setAddress(rs.getString(8));
				pd.setState(rs.getString(9));
				pd.setCity(rs.getString(10));
				
				list.add(pd);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return list;
	}
	
	public static PatientDeclaration ProfileById(int id)  // READ using ID
	{
		PatientDeclaration pd=null;
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("select * from hospital_table where patientId=?");
			
			ps.setInt(1,id);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				pd=new PatientDeclaration();
				
				pd.setPatientId(rs.getInt("patientId")); 
				pd.setPatientSSNId(rs.getInt("patientSSNId"));
				pd.setPatientName(rs.getString("patientName"));
				pd.setPatientAge(rs.getInt("patientAge"));				
				pd.setDateOfAdmission(rs.getString("dateOfAdmission"));				
				pd.setTypeOfBed(rs.getString("typeOfBed"));				
				pd.setAddress(rs.getString("address"));
				pd.setState(rs.getString("state"));
				pd.setCity(rs.getString("city"));
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return pd;
	}
	
	public static List<MedicinesDeclaration> MedById(int id)  // READ Medicines using ID
	{
		List<MedicinesDeclaration> list=new ArrayList<MedicinesDeclaration>();
		
		MedicinesDeclaration md=null;
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("select * from patientmedicines where patientId=?");
			
			ps.setInt(1,id);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				md = new MedicinesDeclaration();
				
				md.setPatientId(rs.getInt("patientId"));
				
				md.setMedicineId(rs.getInt("medicineId"));
				md.setMedicineName(rs.getString("medicineName"));
				md.setMedicineQuantity(rs.getInt("quantityIssued"));				
				md.setMedicineRate(rs.getInt("medicineRate"));
				md.setMedicineAmount(rs.getInt("medicineAmount"));
				// quantityIssued    medicineRate     medicineAmount
				
				list.add(md);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return list;
	}
	
	public static List<MedicinesDeclaration> MedMaster()  // READ from MedMaster
	{
		List<MedicinesDeclaration> list=new ArrayList<MedicinesDeclaration>();
	
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("select * from medicine_master");
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{	
				
				MedicinesDeclaration md=new MedicinesDeclaration();
								
				md.setMed_Id(rs.getInt(1));
				md.setMed_Name(rs.getString(2));
				md.setMed_Quantity(rs.getInt(3));
				md.setMed_Rate(rs.getInt(4));
				
				list.add(md);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return list;
	}
	
	public static int AddToIssue(String medName,int medQty,int patId)  // INSERT For Patient
	{
		int status=0;
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps1=con.prepareStatement("select * from medicine_master where medicineName=?");
			ps1.setString(1,medName);
			
			ResultSet rs1=ps1.executeQuery();

			MedicinesDeclaration md = new MedicinesDeclaration();
			
			while(rs1.next())
			{			 
				md.setMed_Id(rs1.getInt("medicineId"));
				md.setMed_Name(rs1.getString("medicineName"));
				md.setMed_Quantity(rs1.getInt("quantityAval"));
				md.setMed_Rate(rs1.getInt("rate"));
			}
			
			PreparedStatement ps2=con.prepareStatement("insert into patientmedicines (patientId,medicineId,medicineName,quantityIssued,medicineRate) values(?,?,?,?,?)");
			
			ps2.setInt(1,patId);
			ps2.setInt(2,md.getMed_Id());
			ps2.setString(3,medName);
			ps2.setInt(4,medQty);
			ps2.setInt(5,md.getMed_Rate());
			
			status=ps2.executeUpdate();
			
			PreparedStatement ps3=con.prepareStatement("update medicine_master set quantityAval = quantityAval-"+medQty+" where medicineId=?");
			ps3.setInt(1,md.getMed_Id());
			status=ps3.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}
	
	public static List<DiagnosisDeclaration> TestById(int id)  // READ Medicines using ID
	{
		List<DiagnosisDeclaration> list=new ArrayList<DiagnosisDeclaration>();
		
		DiagnosisDeclaration dd=null;
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("select * from patient_diagnosis where patientId=?");
			
			ps.setInt(1,id);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				dd = new DiagnosisDeclaration();
				
				dd.setPatientId(rs.getInt("patientId"));
				
				dd.setDiagnosisId(rs.getInt("diagnosisId"));
				dd.setDiagnosisName(rs.getString("diagnosisName"));
				dd.setDiagnosisCharge(rs.getInt("diagnosisCharge"));
				
				list.add(dd);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return list;
	}
	
	public static List<DiagnosisDeclaration> MasterTests()  // READ
	{
		List<DiagnosisDeclaration> list=new ArrayList<DiagnosisDeclaration>();
	
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("select * from diagnosis_master");
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{	
				
				DiagnosisDeclaration dd=new DiagnosisDeclaration();
								
				dd.setDiag_Id(rs.getInt(1));
				dd.setDiag_Name(rs.getString(2));
				dd.setDiag_Charge(rs.getInt(3));
				
				list.add(dd);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return list;
	}
	
	public static int TestsToConduct(String diagName,int patId)  // INSERT For Patient
	{
		int status=0;
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps1=con.prepareStatement("select * from diagnosis_master where diagnosisName=?");
			ps1.setString(1,diagName);
			
			ResultSet rs1=ps1.executeQuery();

			DiagnosisDeclaration dd = new DiagnosisDeclaration();
			
			while(rs1.next())
			{			 
				dd.setDiag_Id(rs1.getInt("diagnosisId"));
				dd.setDiag_Name(rs1.getString("diagnosisName"));
				dd.setDiag_Charge(rs1.getInt("diagnosisCharge"));
			}
			
			PreparedStatement ps2=con.prepareStatement("insert into patient_diagnosis (patientId,diagnosisId,diagnosisName,diagnosisCharge) values(?,?,?,?)");
			
			ps2.setInt(1,patId);
			ps2.setInt(2,dd.getDiag_Id());
			ps2.setString(3,diagName);
			ps2.setInt(4,dd.getDiag_Charge());
			
			status=ps2.executeUpdate();		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}
	
	public static int medicinesCharged(int id)  // READ using ID
	{
		MedicinesDeclaration pd=null;
		int totalM=0;
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("SELECT sum(medicineAmount) totalMedicineAmount from patientmedicines where patientId=?");
			
			ps.setInt(1,id);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				pd=new MedicinesDeclaration();
				
				pd.setTotalMedicineAmount(rs.getInt("totalMedicineAmount"));
				
				totalM = rs.getInt("totalMedicineAmount");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return totalM;
	}
	
	public static int diagnosisCharged(int id)  // READ using ID
	{
		int totalD=0;
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("SELECT sum(diagnosisCharge) totalTestsAmount from patient_diagnosis where patientId=?");
			
			ps.setInt(1,id);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
							
				totalD = rs.getInt("totalTestsAmount");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return totalD;
	}
	
	public static int patientdischarge(int patId)
	{
		int status=0;
		try
		{
			Connection con=getConnection();
			
			PreparedStatement ps=con.prepareStatement("update hospital_table set status=? where patientId=?");
			
			ps.setString(1,"Discharged");
											
			ps.setInt(2,patId);
			
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}
	
}
