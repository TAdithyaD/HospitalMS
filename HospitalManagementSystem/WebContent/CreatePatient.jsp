<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	
<title>Patient Registration</title>

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

<h1>Patient Registration</h1>
<hr>

<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4">

<form  action="RegisrationSuccesFail.jsp" method="post">
	<table class="table table-borderless">	
			
			<tr>
				<td style="text-align:right">Patient SSN Id</td>
				<td>
					<input type="text" style="text-align:left" name="patientSSNId" required>
				</td>
			</tr>
			<tr>
				<td style="text-align:right">Patient Name</td>
				<td>
					<input type="text" style="text-align:left" name="patientName" required>
				</td>
			</tr>
			<tr>
				<td style="text-align:right">Patient Age</td>
				<td>
					<input type="text" style="text-align:left" name="patientAge" required>
				</td>
			</tr>
			<tr>
				<td style="text-align:right">Date of Admission</td>
				<td>
					<input type="Date" style="width:180px; height: 30px;" style="text-align:left" name="dateOfAdmission" required>
				</td>
			</tr>
			<tr>
				<td style="text-align:right">Type of bed</td>
				<td>    
					<select name="typeOfBed" style="width:180px; height: 30px;" style="text-align:left" required>
						<option>Select</option>
						<option>Single</option>
						<option>General</option>
						<option>Shared</option>
					</select>
				</td>
			</tr>
			<tr>
				<td style="text-align:right">Address</td>
				<td>
					<input type="text" style="text-align:left" name="address" required>
				</td>
			</tr>
			<tr>
				<td style="text-align:right">State</td>
				<td>    
					<select name="state" style="width:180px; height: 30px;" style="text-align:left" required>
						<option>Select</option>
						<option>State1</option>
						<option>State2</option>
						<option>State3</option>
						<option>State4</option>
						<option>State5</option>
					</select>
				</td>
			</tr>
			<tr>
				<td style="text-align:right">City</td>
				<td>    
					<select name="city" style="width:180px; height: 30px;" style="text-align:left" required>
						<option>Select</option>
						<option>City1</option>
						<option>City2</option>
						<option>City3</option>
						<option>City4</option>
						<option>City5</option>
					</select>
				</td>
			</tr>
			<tr>
			<td>
				<input class="btn btn-success" style="float:right" type="submit" value="Submit">
			</td>
			<td>
				<a class="btn btn-warning"  href="SecondPage.jsp" role="button">Cancel</a>
			</td>
		</tr>
		</table>
	</form>

</div>
<div class="col-md-4"></div>
</div>
</body>
</html>