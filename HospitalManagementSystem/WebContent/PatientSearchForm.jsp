<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Page</title>

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

<form action="SecondPage.jsp" method="post">
<input type="hidden" name="patientId" value="<%=pd.getPatientId() %>"/>
<table class="table table-borderless">	
	<tr>
		<td style="text-align:right">Patient SSN Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:left"><%=pd.getPatientSSNId()%></td>
	</tr>
	<tr>
		<td style="text-align:right">Patient Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:left"><%=pd.getPatientName()%></td>
	</tr>
	<tr>
		<td style="text-align:right">Patient Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:left"><%=pd.getPatientAge()%></td>
	</tr>
	<tr>
		<td style="text-align:right">Date Of Admission:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:left"><%=pd.getDateOfAdmission()%></td>
	</tr>
	<tr>
		<td style="text-align:right">Type Of Bed:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:left"><%=pd.getTypeOfBed()%></td>
	</tr>
	<tr>
		<td style="text-align:right">Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:left"><%=pd.getAddress()%></td>
	</tr>
	<tr>
		<td style="text-align:right">State:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:left"><%=pd.getState()%></td>
	</tr>
	<tr>
		<td style="text-align:right">City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td style="text-align:left"><%=pd.getCity()%></td>
	</tr>
	<tr>
		<td></td>
		<td style="text-align:left"><input class="btn btn-success" type="submit" value="Home Page"/></td>	
	</tr>		
</table>
</form>

</div>
<div class="col-md-4"></div>
</div>
</body>
</html>