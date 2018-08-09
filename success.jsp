<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
     <%@page  isELIgnored="false" %>
<%@ page errorPage = "errorHandler.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success Page</title>
</head>
<body>
<div class="container">
<%@ include file="menu.jsp" %>
<div class="row">
<div class="col-md-7">
<div style="float:left; width:30%;">
<h1>Message:${message}</h1>
</div>
 </div>
<div class="col-md-5">
<jsp:include page="refresh.jsp"/>
 </div>
 </div>
 </div>
</body>
</html>