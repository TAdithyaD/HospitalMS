<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import=" java.sql.Connection " %>
<%@page import=" java.sql.DriverManager " %>
<%@page import=" java.sql.PreparedStatement " %>
<%@page import=" java.sql.ResultSet " %>
<%@page import=" java.sql.Statement " %>

<%@page import="com.hospital.dao.*,com.hospital.declaration.*,java.util.*"%>



	<form action="" method="get">
		<table style="margin: auto;">
			<tr>
				<td>
					<input type="text" class="form-control" name="meds" placeholder="Search medicines here..">
				</td>
			</tr>
		</table>
	</form>

<br>
<br>
<h4>List Of Medicines</h4>
<br>
<div class="container">

<!--               MedicineMaster Table                     -->

<table class="table" >

	<thead class="thead-dark">
	<tr>
		<th scope="col">Medicine Id</th>
		<th scope="col">Medicine</th>
		<th scope="col">Quantity</th>
		<th scope="col">Rate</th>
	</tr>
	</thead>
	
	
	<tbody>
	
	<%
	Statement stat = null;
	ResultSet res = null;
	Connection con=HospitalDao.getConnection();
	
	stat = con.createStatement();
	
	String query = request.getParameter("meds");
	String data;
	
	if(query != null)
	{
		data = " select * from medicine_master where medicineId like '%"+query+"%' or medicineName like '%"+query+"%' or quantityAval like '%"+query+"%' or rate like '%"+query+"%' ";
	}
	else
	{
		data = "select * from medicine_master";
	}
	res = stat.executeQuery(data);
	
	while(res.next()){
	%>
	
	<tr>
		<th scope="row"><%=res.getInt("medicineId") %></th>
		<td> <%=res.getString("medicineName") %> </td>
		<td> <%=res.getInt("quantityAval") %> </td>
		<td> <%=res.getInt("rate") %> </td>
	</tr>
	<%
	} // &?med_Quantity=${cd.getMed_Quantity()}
	%>
	</tbody>
</table>

<br>
<br>
<% 
String id=request.getParameter("patientId"); 
String ids = id;
%>
Patient Id : + <%=ids%>

<form action="MedicineAdded.jsp?med_Name=${cd.getMed_Name()}&?med_Quantity=${cd.getMed_Quantity()}&?patientId=<%=id%>" method="get" Style="margin: auto;" >
<input type="hidden" name="patientId" value="<%=ids%>"/>
   <table style="margin: auto;">
			<tr>
				<td>
					Medicine Name
				</td>
				<td >
					Quantity &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
				</td>
			</tr>
			<tr>
				<td>
					 <input type="text" name="med_Name"> &nbsp;
				</td>
				<td>
					<input type="text" name="med_Quantity"> &nbsp; <input type="submit" value="Add">
				</td>
			</tr>
			
			
	</table>
</form>
<br>
<br>

</div>
<a class="btn btn-warning"  href="Pharmacy.jsp?patientId=<%=id%>" role="button">Go Back</a>
<a class="btn btn-success"  href="SecondPage.jsp" role="button">Home Page</a>
<br>
<br>


</body>
</html>