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
<title>Update Id Form</title>
</head>
<body>
<div class="container">
<%@ include file="menu.jsp" %>
<div class="row">
<div class="col-md-7">
<div style="float:left; width:30%;">
<form action="/SpringBRD14/updateform" method="post"> 
<center>
Enter Customer code:<input type="text" name="cCode" id="cCode"/><br><br>
<input type="submit" id="edit1" name="edit1" value="Submit"/> 
</center>
</form>
</div>
 </div>
<div class="col-md-5">
<jsp:include page="refresh.jsp"/>
 </div>
 </div>
 </div>
</body>
</html>