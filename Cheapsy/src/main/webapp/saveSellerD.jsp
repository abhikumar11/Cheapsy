<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.database.DbConnect"%>
<!DOCTYPE html>
<html>
<head>
<jsp:useBean id="obj" class="com.userbean.SaveSellerDetails"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<%
HttpSession s=request.getSession();
String email=String.valueOf(s.getAttribute("email"));
int status=DbConnect.saveSeller(obj, email);
if(status!=-1)
{
	response.sendRedirect("sellerDashbord.jsp");
}
else
{
	s.invalidate();
	response.sendRedirect("sellerHome.jsp");
}
%>
</html>