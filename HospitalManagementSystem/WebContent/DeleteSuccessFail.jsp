<%@page import="com.hospital.dao.HospitalDao" %>

<jsp:useBean id="cd" class="com.hospital.declaration.PatientDeclaration"></jsp:useBean>
<jsp:setProperty property="*" name="cd"/>

<%
int i=HospitalDao.delete(cd);

request.setAttribute("Ivalue", i);

if(i>0)
{
response.sendRedirect("created.jsp");
}
else
{
response.sendRedirect("SecondPage.jsp");
}
%>