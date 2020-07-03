<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pharmacy</title>
</head>
<body style="text-align: center;">
<jsp:include page="Header.jsp"></jsp:include>

Welcome to Pharmacy Page!
<hr>
<br>

<%@page import="com.hospital.dao.*,com.hospital.declaration.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
String id=request.getParameter("patientId"); 

PatientDeclaration pd = HospitalDao.ProfileById(Integer.parseInt(id));

List<MedicinesDeclaration> list = HospitalDao.MedById(Integer.parseInt(id));
request.setAttribute("list",list);
%>

<!--               Patient Table                     -->

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
<h2>Medicines Issued</h2>
<br>

<!--               Medicine Table                     -->

<table class="table" >

	<thead class="thead-dark">
	<tr>
		<th scope="col">ID</th>
		<th scope="col">Medicine</th>
		<th scope="col">Quantity</th>
		<th scope="col">Rate</th>
		<th scope="col">Amount</th> <!--   Calculation For Amount    -->
	</tr>
	</thead>	
	
	<c:forEach items="${list}" var="md">
	
	<tbody>
	<tr>
		<th scope="row"> ${ md.getMedicineId()} </th>
		<td> ${ md.getMedicineName() } </td>
		<td> ${ md.getMedicineQuantity() }</td>
		<td> ${ md.getMedicineRate() } </td>
		<td> ${ md.getMedicineAmount() } </td>
	</tr>
	</tbody>
	</c:forEach>
</table>

<br>
<br>


<!--                 Issue Medicine Button                 -->

<a class="btn btn-info"  href="IssueMedicines.jsp?patientId=<%=pd.getPatientId()%>" role="button">Issue Medicines</a>
<br>
<br>


</div>

<br>
<br>
<hr>
<a class="btn btn-info"  href="UpdatedSuccessfully.jsp" role="button">Update</a>
<a class="btn btn-success"  href="SecondPage.jsp" role="button">Home Page</a>
<br>
<br>
</body>
</html>