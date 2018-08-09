<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
     <%@page  isELIgnored="false" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page errorPage = "errorHandler.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View User Id Form</title>
</head>
<body>
<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
<%@ include file="menu2.jsp" %>
<form action="/SpringBRD14/viewUser" method="post"> 
<center>
Enter User Name:<input type="text" name="username" id="username"/><br><br>
<input type="submit" id="view" name="view" value="View"/> 
</center>
</form>
</body>
</html>