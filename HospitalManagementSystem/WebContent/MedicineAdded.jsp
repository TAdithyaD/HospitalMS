<%@page import="com.hospital.dao.*" %>

<jsp:useBean id="md" class="com.hospital.declaration.MedicinesDeclaration"></jsp:useBean>
<jsp:setProperty property="*" name="md"/>

<%
String medName=request.getParameter("med_Name"); 
String medQty=request.getParameter("med_Quantity"); 
String patId=request.getParameter("patientId"); 

out.println(medName);
out.println(Integer.parseInt(medQty));
out.println(Integer.parseInt(patId));

int i = HospitalDao.AddToIssue( medName , Integer.parseInt(medQty) , Integer.parseInt(patId) );


if(i>0)
{
response.sendRedirect("Pharmacy.jsp?patientId="+patId);
}
else
{
response.sendRedirect("MedicineAddedFail.jsp");
}

%>