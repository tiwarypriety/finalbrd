<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
     <%@page  isELIgnored="false" %>
<%@ page errorPage = "errorHandler.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add USER</title>
</head>
<body> 
<%@ include file="menu.jsp" %>
<center>
<form action="/SpringBRD14/addUser" method="post" modelAttribute="user",modelAttribute="role" ><!--  modelAttribute="user",modelAttribute="role"> -->
<center>
<br><br>
<h1>User Registration Page!!</h1><br><br>
<table>
<!-- <tr>
<td>User Code:<hr></td>
<td><input type="text" name="eCode" id="eCode" size="40"/> </td>
</tr> -->
<tr>
<td><br>User Name:<hr></td>
<td><br><input type="text" name="username" id="username" size="40"/></td>
</tr>
<tr>
<td><br>User Password:<hr></td>
<td><br><input type="text" name="password" id="password" size="40"/><!-- <p id="p1" style="color:red;"></p></td> -->
</tr>
<tr>
<td><br>Enabled:<hr></td>
<td><br><input type="text" name="enabled" id="enabled" size="40"/><!-- <p id="p1" style="color:red;"></p></td> -->
</tr>
<tr>
<td><br>Role Name:<hr></td>
<!-- <td><input type="text" name="role" id="role"/> -->
<td><input type="radio" id="role" name="role" value="ROLE_USER">ROLE_USER
    <input type="radio" id="role" name="role" value="ROLE_ADMIN">ROLE_ADMIN</td>
</tr>
<center>
<tr>
<td><input type="submit" id="register" name="register" value="Register" class="btn btn-success btn-sm"/></td>
<td><input type="reset" class="btn btn-success btn-sm" value="Reset" id="reset" name="reset"/></td>
</tr>
</center>
</table><br>
</center>
 </form>
</body>
</html>