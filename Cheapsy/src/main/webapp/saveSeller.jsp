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
int status=DbConnect.saveSeller(obj);
if(status!=-1)
{
  response.sendRedirect("sellerLogin.jsp");
}
else
{
	response.sendRedirect("sellerAcc.jsp");
}
%>
</body>
</html>