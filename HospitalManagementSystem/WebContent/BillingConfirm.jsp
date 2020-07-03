<%@page import="com.hospital.dao.HospitalDao" %>

<jsp:useBean id="cd" class="com.hospital.declaration.PatientDeclaration"></jsp:useBean>
<jsp:setProperty property="*" name="cd"/>

<%
String patId=request.getParameter("patientId");

int i=HospitalDao.patientdischarge(Integer.parseInt(patId));

request.setAttribute("Ivalue", i);

if(i>0)
{
response.sendRedirect("BillingConfirmSuccessful.jsp");
}
else
{
response.sendRedirect("BillPatientDetails.jsp");
}
%>