<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
<style type="text/css">
	table
	{
		margin: auto;
		border-spacing: 15px 20px;
	}
</style>
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>

<jsp:useBean id="cd" class="com.hospital.declaration.PatientDeclaration"></jsp:useBean>
<jsp:setProperty property="*" name="cd"/>

<%@page import="com.hospital.dao.*,com.hospital.declaration.*,java.util.*"%>

<h1>Update Patient Details</h1>
<hr>

<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4">

<form action="" method="get">
		<table style="margin: auto;">
			<tr>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;Enter Patient Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td><input type="text" class="form-control" name="patientId" placeholder="Get Details.."></td>
				<!--  <td><input type="submit" value="GET"></td>  -->			
			</tr>
		</table>
</form>
</div>
<div class="col-md-4"></div>
</div>

<%
String id=request.getParameter("patientId");

if(id != null)
{
%>
	<jsp:include page="PatientUpdateForm.jsp?patientId=${cd.getPatientId()}"></jsp:include>
<%
}
else
{
%>
	<jsp:include page="EmptyForm.jsp"></jsp:include>
<%
}
%>
</body>
</html>
