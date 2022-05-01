<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
    <%@page import="com.database.DbConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tech Renting System</title>
</head>
<jsp:useBean id="obj" class="com.userbean.AddToCart"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<body>
<% 
HttpSession s=request.getSession();
if(s.getAttribute("username")==null)
{  s.setAttribute("cartvalidate",(int)1);
	response.sendRedirect("login.jsp");
}
else
{
  int status=DbConnect.addToCart(obj, String.valueOf(s.getAttribute("email")));
}%>
</body>
</html>