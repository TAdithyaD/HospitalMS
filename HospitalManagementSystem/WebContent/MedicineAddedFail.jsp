<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Out Of Stock</title>
</head>
<body>

<jsp:include page="Header.jsp"></jsp:include>

<h4 style="color:Red;">Sorry for the Inconvenience</h4>
<h6 style="color:Red;">Your Medicine Is Out Of Stock</h6>
<br>
<jsp:include page="MedicineIssuedTable.jsp"></jsp:include>

</body>
</html>