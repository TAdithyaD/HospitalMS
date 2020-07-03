<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="text-align: center;">
<jsp:include page="Header.jsp"></jsp:include>

Billing Page
<hr>
<br>

<%@page import="com.hospital.dao.*,com.hospital.declaration.*,java.util.*"%>

<%@page import="java.util.Date,java.text.DateFormat,java.text.SimpleDateFormat" %>
<%@page import="java.time.LocalDate,java.time.temporal.ChronoUnit" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
int Single=8000;
int Shared=4000;
int General=2000;

%>

<% 
String id=request.getParameter("patientId"); 

PatientDeclaration pd = HospitalDao.ProfileById(Integer.parseInt(id));

List<MedicinesDeclaration> list = HospitalDao.MedById(Integer.parseInt(id));
request.setAttribute("list",list);

 List<DiagnosisDeclaration> lists = HospitalDao.TestById(Integer.parseInt(id));
 request.setAttribute("lists",lists);
 
 int pharmacyTotal = HospitalDao.medicinesCharged(Integer.parseInt(id)); // diagnosisCharged
 int diagnosticsTotal = HospitalDao.diagnosisCharged(Integer.parseInt(id)); // diagnosticsTotal
%>

<%
Date todaysDate = new Date();
DateFormat df = new SimpleDateFormat("yyyy-MM-dd");

String dateOfDischarge = df.format(todaysDate);
%>

<!--     Patient Table         -->
<h2>Patient Billing  Details</h2>
<br>

<table class="table" >
	<thead class="thead-dark">
	<tr>
		<th scope="col">Patient Id</th>
		<th scope="col">Name</th>
		<th scope="col">Age</th>
		<th scope="col">Address</th>
		<th scope="col">Date of Joining</th>
		<th scope="col">Date of Discharge</th>
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
		<td> <% out.println(dateOfDischarge); %> </td>
		<td> <%= pd.getTypeOfBed() %> </td> 
	</tr>
	</tbody>
</table>
<br>
<%
int ChargeOnRoom = 0;
int RoomCharge = 0;
if(pd.getTypeOfBed().equalsIgnoreCase("Single"))
{
	String dateBeforeString = pd.getDateOfAdmission();
    String dateAfterString = df.format(todaysDate);
    
   //Parsing the date
	LocalDate dateBefore = LocalDate.parse(dateBeforeString);
	LocalDate dateAfter = LocalDate.parse(dateAfterString);
		
	//calculating number of days in between
	int noOfDaysBetween = (int) ChronoUnit.DAYS.between(dateBefore, dateAfter);
		
	RoomCharge = noOfDaysBetween*Single;
%>
<h5>Room Charge For <% out.println(noOfDaysBetween); %> Days : <i class="fa fa-rupee" style="font-size:18px"> </i>  <% out.println(RoomCharge); %></h5>
<%
}
else if(pd.getTypeOfBed().equalsIgnoreCase("Shared"))
{
	String dateBeforeString = pd.getDateOfAdmission();
    String dateAfterString = df.format(todaysDate);
    
   //Parsing the date
	LocalDate dateBefore = LocalDate.parse(dateBeforeString);
	LocalDate dateAfter = LocalDate.parse(dateAfterString);
		
	//calculating number of days in between
	int noOfDaysBetween = (int) ChronoUnit.DAYS.between(dateBefore, dateAfter);
		
	RoomCharge = noOfDaysBetween*Shared;
%>
<h5>Room Charge For <% out.println(noOfDaysBetween); %> Days : <i class="fa fa-rupee" style="font-size:18px"> </i>  <% out.println(RoomCharge); %></h5>
<%
}
else if(pd.getTypeOfBed().equalsIgnoreCase("General"))
{
	String dateBeforeString = pd.getDateOfAdmission();
    String dateAfterString = df.format(todaysDate);
    
   //Parsing the date
	LocalDate dateBefore = LocalDate.parse(dateBeforeString);
	LocalDate dateAfter = LocalDate.parse(dateAfterString);
		
	//calculating number of days in between
	int noOfDaysBetween = (int) ChronoUnit.DAYS.between(dateBefore, dateAfter);
		
	RoomCharge = noOfDaysBetween*General;
	
%>
<h5>Room Charge For <% out.println(noOfDaysBetween); %> Days : <i class="fa fa-rupee" style="font-size:18px"> </i>  <% out.println(RoomCharge); %></h5>
<%
}
%>

<div class="container">

<br>
<br>
<h2>Charge On Medicines Issued</h2>
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
		<th scope="row"> ${ md.getMedicineId() } </th>
		<td> ${ md.getMedicineName() } </td>
		<td> ${ md.getMedicineQuantity() }</td>
		<td> ${ md.getMedicineRate() } </td>
		<td> ${ md.getMedicineAmount() } </td>
	</tr>
	</tbody>
	</c:forEach>
</table>

<br>
<h5>Charge For Medicines : <i class="fa fa-rupee" style="font-size:18px"> </i> <% out.println(pharmacyTotal); %></h5>
<br>

<br>
<br>
<h2>Charge On Diagnostics Conducted</h2>
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
	
	<c:forEach items="${lists}" var="dd">
	
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
<h5>Charge For Diagnostics : <i class="fa fa-rupee" style="font-size:18px"> </i> <% out.println(diagnosticsTotal); %></h5>
<br>
<%
int TotalAmount = RoomCharge+pharmacyTotal+diagnosticsTotal;
%>
<br>
<h3>Total Amount : <i class="fa fa-rupee" style="font-size:24px"> </i> <% out.println(TotalAmount); %></h3>
<br>
<a class="btn btn-info"  href="BillingConfirm.jsp?patientId=<%= pd.getPatientId() %>" role="button">Confirm</a>
<a class="btn btn-success"  href="SecondPage.jsp" role="button">Home Page</a>
</div> <!--  For Container -->
<br>
<br>
</body>
</html>