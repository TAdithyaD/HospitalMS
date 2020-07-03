<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LOGIN PAGE</title>
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
		
	</style>
</head>
<body>

 <div class="jumbotron jumbotron-fluid"> 

		<div class="container"> 

			<h1 style="color:orange; text-align: center;"> 
				MARVEL Hospital 
			</h1>  

			<h5 style="text-align: center;">Investing in Quality Care</h5>
		</div>

	</div>
	
<p style="text-align: center;">
	<font color="red">${errorMessage}</font>
</p>

<form action="LoginServlet" method="POST">
	<div class="container">
			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-6">
					<div class="border border-warning">
						<div class="d-flex justify-content-center bg-white mb-3">	
							<div class="p-2 bg-white"><h2>LOGIN</h2></div>
							<div class="p-2 bg-white">&nbsp;</div>
						</div>
						<div class="d-flex justify-content-center bg-white mb-3">	
							<div class="p-2 bg-white">USERNAME</div>
							<div class="p-2 bg-white"><input type="text" name="name"></div>
						</div>
						<div class="d-flex justify-content-center bg-white mb-3">
							<div class="p-2 bg-white">PASSWORD</div>
							<div class="p-2 bg-white"><input type="password" name="password"></div>
						</div>
						<div class="d-flex justify-content-center bg-white mb-3">
							<div class="p-2 bg-white"></div>
							<div class="p-2 bg-light"><input style="float:right" type="submit" value="login"></div>
						</div>
						<div class="d-flex justify-content-center bg-white mb-3">	
							<div class="p-2 bg-white">&nbsp;</div>
							<div class="p-2 bg-white">&nbsp;</div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
				</div>
			</div>
		</div>
</form>

</body>
</html>
