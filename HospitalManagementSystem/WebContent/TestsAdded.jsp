<%@page import="com.hospital.dao.*" %>

<jsp:useBean id="md" class="com.hospital.declaration.DiagnosisDeclaration"></jsp:useBean>
<jsp:setProperty property="*" name="md"/>

<%
String diagName=request.getParameter("diag_Name");
String patId=request.getParameter("patientId"); 

out.println(diagName);
out.println(Integer.parseInt(patId));

int i = HospitalDao.TestsToConduct( diagName , Integer.parseInt(patId) );


if(i>0)
{
response.sendRedirect("DiagnosticCentre.jsp?patientId="+patId);
}
else
{
response.sendRedirect("TestsAddedFail.jsp");
}

%>