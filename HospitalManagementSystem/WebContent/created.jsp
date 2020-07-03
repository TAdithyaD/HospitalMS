<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
		h4
		{
			text-align: center;
		}
		p
		{
			text-align: center;
		}
</style>
</head>
<body>

<jsp:include page="Header.jsp"></jsp:include>

<h4 style="color:green;">Operation Initiated Successfully!</h4>
<br>
<jsp:include page="ReadTable.jsp"></jsp:include>

</body>
</html>