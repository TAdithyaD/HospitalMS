<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Page</title>

<style type="text/css">

	table
	{
		margin: auto;
		border-spacing: 15px 20px;
	}
	h2
	{
		text-align: center;
	}
</style>

</head>
<body>
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4">

<%@page import="com.hospital.dao.HospitalDao,com.hospital.declaration.PatientDeclaration"%>

<% 
String id=request.getParameter("patientId"); 
PatientDeclaration pd = HospitalDao.ProfileById(Integer.parseInt(id));
%>

<form action="DeleteSuccessFail.jsp" method="post">
<input type="hidden" name="patientId" value="<%=pd.getPatientId() %>"/>
<table class="table table-borderless">	
	<tr>
		<td style="text-align:right">Patient SSN Id :</td>
		<td><input type="text" name="patientSSNId" value="<%=pd.getPatientSSNId()%>" disabled/></td>
	</tr>
	<tr>
		<td style="text-align:right">Patient Name :</td>
		<td><input type="text" name="patientName" value="<%=pd.getPatientName()%>" disabled/></td>
	</tr>
	<tr>
		<td style="text-align:right">Patient Age :</td>
		<td><input type="text" name="patientAge" value="<%=pd.getPatientAge()%>" disabled/></td>
	</tr>
	<tr>
		<td  style="text-align:right">Date Of Admission :</td>
		<td><input type="text" name="dateOfAdmission" value="<%=pd.getDateOfAdmission()%>" disabled/></td>
	</tr>
	<tr>
		<td style="text-align:right">Type Of Bed :</td>
		<td><input type="text" name="typeOfBed" value="<%=pd.getTypeOfBed()%>" disabled/></td>
	</tr>
	<tr>
		<td  style="text-align:right">Address :</td>
		<td><input type="text" name="address" value="<%=pd.getAddress()%>" disabled/></td>
	</tr>
	<tr>
		<td style="text-align:right">State :</td>
		<td><input type="text" name="state" value="<%=pd.getState()%>" disabled/></td>
	</tr>
	<tr>
		<td style="text-align:right">City :</td>
		<td><input type="text" name="city" value="<%=pd.getCity()%>" disabled/></td>
	</tr>
	<tr>
		<td><input class="btn btn-danger" type="submit" style="float: right" value="Delete"/></td>
		<td>
		<a class="btn btn-warning"  href="SecondPage.jsp" role="button">Cancel</a>
		</td>
	</tr>
</table>
</form>

</div>
<div class="col-md-4"></div>
</div>
</body>
</html>