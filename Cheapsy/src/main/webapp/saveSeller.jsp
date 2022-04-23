<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Connection" %>
     <%@page import="com.database.DbConnect" %>
<!DOCTYPE html>
<html>
<body>
<jsp:useBean id="obj" class="com.userbean.SaveSeller"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<%
HttpSession s=request.getSession(true);
int status=DbConnect.saveSeller(obj);
if(status!=-1)
{
	s.setAttribute("email",request.getParameter("userId").toString());
  response.sendRedirect("sellerAcc.jsp");
}
else
{
	response.sendRedirect("sellerSignUp.jsp");
}
%>
</body>
</html>