<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Diagnosis</title>
</head>
<body style="text-align: center;">
<jsp:include page="Header.jsp"></jsp:include>

Welcome to Diagnostic Centre!
<hr>
<br>
<%@page import="com.hospital.dao.*,com.hospital.declaration.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<% 
String id=request.getParameter("patientId"); 

PatientDeclaration pd = HospitalDao.ProfileById(Integer.parseInt(id));

List<DiagnosisDeclaration> list = HospitalDao.TestById(Integer.parseInt(id));
request.setAttribute("list",list);
%>

<!--     Patient Table         -->
<h2>Patient Details</h2>
<br>

<table class="table" >

	<thead class="thead-dark">
	<tr>
		<th scope="col">Patient Id</th>
		<th scope="col">Name</th>
		<th scope="col">Age</th>
		<th scope="col">Address</th>
		<th scope="col">Date of Joining</th>
		<th scope="col">Type of Room</th>
	</tr>
	</thead>	

	<tbody>
	<tr>
		<th scope="row"> <%= pd.getPatientId() %> </th>
		<td> <%= pd.getPatientName() %> </td>
		<td> <%= pd.getPatientAge() %> </td>
		<td> <%= pd.getAddress() %> </td>
		<td> <%= pd.getDateOfAdmission() %> </td>
		<td> <%= pd.getTypeOfBed() %> </td> 
	</tr>
	</tbody>

</table>

<div class="container">

<br>
<br>
<h2>Diagnostics Conducted</h2>
<br>

<!--               patient_diagnosis Table                     -->

<table class="table" >

	<thead class="thead-dark">
	<tr>
		<th scope="col">Test Id</th>
		<th scope="col">Test Name</th>
		<th scope="col">Charge</th>
	</tr>
	</thead>	
	
	<c:forEach items="${list}" var="dd">
	
	<tbody>
	<tr>
		<th scope="row"> ${ dd.getDiagnosisId()} </th>
		<td> ${ dd.getDiagnosisName() } </td>
		<td> ${ dd.getDiagnosisCharge() }</td>
	</tr>
	</tbody>
	</c:forEach>
</table>
<br>
<br>

<!--                 AddDiagnostics  Button                 -->

<a class="btn btn-info"  href="AddDiagnostics.jsp?patientId=<%=pd.getPatientId()%>" role="button">Add Diagnostics</a>
<br>
<br>

</div> <!--  For Container -->

<br>
<br>
<hr>
<a class="btn btn-info"  href="DiagUpdatedSuccessfully.jsp" role="button">Update</a>
<a class="btn btn-success"  href="SecondPage.jsp" role="button">Home Page</a>
<br>
<br>
</body>
</html>