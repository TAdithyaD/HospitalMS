<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="com.hospital.dao.*,com.hospital.declaration.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h4>List Of Tests</h4>
<br>
<%
List<DiagnosisDeclaration> list = HospitalDao.MasterTests();
request.setAttribute("list",list);
%>
<div class="container">

<!--               MedicineMaster Table                     -->

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
		<th scope="row"> ${ dd.getDiag_Id() } </th>
		<td> ${ dd.getDiag_Name() } </td>
		<td> ${ dd.getDiag_Charge() } </td>
	</tr>
	</tbody>
	</c:forEach>
</table>

<br>
<br>
<% 
String id=request.getParameter("patientId"); 
String ids = id;
%>

<form action="TestsAdded.jsp?diag_Name=${cd.getDiag_Name()}&?patientId=<%=id%>" method="get" Style="margin: auto;" >
<input type="hidden" name="patientId" value="<%=ids%>"/>
   <table style="margin: auto;">
			<tr>
				<td>
					Test Name: &nbsp;
				</td>
				<td>
					 <input type="text" name="diag_Name"> &nbsp;
				</td>
				<td>
					<input type="submit" value="Add">
				</td>
			</tr>
			
			
	</table>
</form>
<br>
<br>

</div>
<a class="btn btn-warning"  href="DiagnosticCentre.jsp?patientId=<%=id%>" role="button">Go Back</a>
<a class="btn btn-success"  href="SecondPage.jsp" role="button">Home Page</a>
<br>
<br>

</body>
</html>