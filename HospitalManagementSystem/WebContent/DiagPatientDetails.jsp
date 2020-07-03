<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Details Screen</title>
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

<jsp:include page="Header.jsp"></jsp:include>

<%@page import="com.hospital.dao.HospitalDao,com.hospital.declaration.PatientDeclaration,java.util.*"%>


<h2>Search Patient Details To Conduct Diagnose</h2>
<br>

<form action="DiagnosticCentre.jsp?patientId=${cd.getPatientId()}">
<%// ProfileById %>
<table>
	<tr>
		<td>
			Enter Patient Id: &nbsp;&nbsp;
		
			<input type="text" name="patientId" placeholder="Search.."onclick="this.value=''">&nbsp;&nbsp;
			
			<input class="btn btn-light btn-sm" type="submit" value="GET">
		</td>
	</tr>
</table>
</form>

</body>
</html>