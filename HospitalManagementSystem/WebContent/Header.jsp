
<!DOCTYPE html>
<html>
<head>

	<title>Welcome Page</title>

	<meta name="viewport" content="width=device-width, initial-scale=1"> 

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> 

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> 
	</script> 

	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"> 
	</script> 

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> 
	</script>
	
	<style type="text/css">
		.jumbotron 
		{
			padding-top: 2rem;
			padding-bottom: 2rem;
		}
		body
		{
			text-align:center;
		}
	</style>

</head>

<body> 

	<div class="jumbotron jumbotron-fluid"> 

		<div class="container"> 

			<h1 style="color:orange; text-align: center;"> 
				MARVEL Hospital 
			</h1>  

			<h5 style="text-align: center;">Investing in Quality Care</h5>

			<div class="btn-group">
				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						Desk Executive
					</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="CreatePatient.jsp">Register Patient</a>
						<a class="dropdown-item" href="SamePageUpdate.jsp">Update Patient Info</a>
						<a class="dropdown-item" href="SamePageDelete.jsp">Delete Patient Info</a>
						<a class="dropdown-item" href="ViewPatient.jsp">Patients List</a>
						<a class="dropdown-item" href="SearchPatient.jsp">Search Patient</a>
						<a class="dropdown-item" href="BillPatientDetails.jsp">Patient Billing</a>
					</div>
				</div>
				<div>&nbsp;</div>
				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						Pharmacist
					</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="PharmPatientDetails.jsp">Pharmacy</a>
						<a class="dropdown-item" href="BillPatientDetails.jsp">Patient Billing</a>
					</div>
				</div>
				<div>&nbsp;</div>
				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						Diagnostician
					</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="DiagPatientDetails.jsp">Diagnosis</a>
						<a class="dropdown-item" href="BillPatientDetails.jsp">Patient Billing</a>
					</div>
				</div>
			</div>

		</div> 

	</div> 

</body>

</html>