<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Table</title>
</head>

<body style="text-align:center;">


<%@page import="com.hospital.dao.*,com.hospital.declaration.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Patients List</h1>
<br>

<%
List<PatientDeclaration> list = HospitalDao.getAllRecords();
request.setAttribute("list",list);
%>

<table class="table" >
	<thead class="thead-dark">
	<tr>
		<th scope="col">Patient Id</th>
		<th scope="col">Name</th>
		<th scope="col">Age</th>
		<th scope="col">Address</th>
		<th scope="col">Date of Joining</th>
		<th scope="col">Status</th>
		<th scope="col">Type of Room</th>
	</tr>
	</thead>	
	
	<c:forEach items="${list}" var="pd">
	
	<tbody>
	<tr>
		<th scope="row"> ${ pd.getPatientId() } </th>
		<td> ${ pd.getPatientName() } </td>
		<td> ${ pd.getPatientAge() } </td>
		<td> ${ pd.getAddress() } </td>
		<td> ${ pd.getDateOfAdmission() } </td>
		<td> ${ pd.getStatus() } </td>
		<td> ${ pd.getTypeOfBed() } </td> 
	</tr>
	</tbody>
	</c:forEach>
</table>

<br>
<br>

<a class="btn btn-success"  href="SecondPage.jsp" role="button">Home Page</a>
<br>
<br>

</body>
</html>