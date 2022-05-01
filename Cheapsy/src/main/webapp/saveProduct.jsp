<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.database.DbConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tech Renting Website</title>
</head>
<body>
<jsp:useBean id="obj" class="com.userbean.SaveProduct"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<%
HttpSession s=request.getSession(false);
String email=String.valueOf(s.getAttribute("email"));
int status=DbConnect.saveProduct(obj,email);
if(status==-1)
{
	response.sendRedirect("sellerDashbord.jsp");
}
else
{
	response.sendRedirect("productListing.jsp");
}
%>
</body>
</html>