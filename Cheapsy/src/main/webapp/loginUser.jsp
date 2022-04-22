
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*" %>
     <%@page import="com.database.DbConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
<jsp:useBean id="obj" class="com.userbean.LoginUser"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<%
HttpSession ss=request.getSession();
if(ss.getAttribute("loginvalue")==null)
{
	ResultSet status=DbConnect.validateUser(obj);
	if(status.next())
	{
	     ss.setAttribute("username",status.getString(1));
	   response.sendRedirect("home.jsp");
	}
}
else
{
	ss.invalidate();
	response.sendRedirect("home.jsp");
}


%>
</body>
</html>