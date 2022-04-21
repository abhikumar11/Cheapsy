<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Connection" %>
     <%@page import="com.database.DbConnect" %>
<!DOCTYPE html>
<html>
<body>
<jsp:useBean id="obj" class="com.userbean.SaveUser"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<%
int status=DbConnect.saveNewUser(obj);
if(status!=-1)
{
  response.sendRedirect("login.jsp");
}
%>
</body>
</html>