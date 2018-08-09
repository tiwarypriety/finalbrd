<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="c"%>
     <%@page  isELIgnored="false" %>
<%@ page errorPage = "errorHandler.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Form</title>
</head>
<body>
<div class="container">
<%@ include file="menu.jsp" %>
<div class="row">
<div class="col-md-7">
<div style="float:left; width:30%;">
<center>
<form  action="/SpringBRD14/update" method="post" modelAttribute="customer">
<center>
<br><br>
<h1>Update Form!!</h1><br><br>
<table>
<tr>
<td><h1>Customer Code: </h1><hr></td>
<td><input type="text" name="eCode" id="eCode" size="40" value="${customer.geteCode()}" readonly/> </td>
</tr>
<tr>
<td><br>Customer Name:<hr></td>
<td><br><input type="text" name="eName" id="eName" size="40" value="${customer.eName}"/></td>
</tr>
<tr>
<td><br>Customer E-mail address:<hr></td>
<td><br><input type="text" name="eEmail" id="eEmail" size="40" value="${customer.eEmail}"/><!-- <p id="p2" style="color:red;"></p></td> -->
</tr>
<tr>
<td><br>Customer Address:<hr></td>
<td><br><textarea type="text" name="cAddress" id="cAddress">${customer.cAddress}</textarea></td>
</tr>
<tr>
<td><br>Customer Contact Number:<hr></td>
<td><br><input type="text" name="cContact" id="cContact" size="40" value="${customer.cContact}"/><!-- <p id="p3" style="color:red;"></p></td> -->
</tr>
<tr>
<td><br>Customer PinCode:<hr></td>
<td><br><input type="text" name="cPincode" id="cPincode" size="40"  value="${customer.cPincode}"/><!-- <p id="p1" style="color:red;"></p></td> -->
</tr>
<tr>
<td><br>Created Date:<hr></td>
<td><br><input type="text" name="createDate" id="createDate" size="40" value="${customer.getCreateDate()}" readonly/><!-- <p id="p3" style="color:red;"></p></td> -->
</tr>
<tr>
<td><br>Created By:<hr></td>
<td><br><input type="text" name="createdBy" id="createdBy" size="40" value="${customer.createdBy}" readonly/><!-- <p id="p3" style="color:red;"></p></td> -->
</tr>
<tr>
<center>
<td><input type="submit" id="register" name="register" value="Update" class="btn btn-success btn-sm"/></td>
</center>
</tr>
<tr>
<center>
<td><input type="reset" class="btn btn-success btn-sm" value="Reset" id="reset" name="reset"/></td>
</center>
</tr>
</table><br>
</form>
</center>
</center>
</div>
 </div>
<div class="col-md-5">
<jsp:include page="refresh.jsp"/>
 </div>
 </div>
 </div>
</body>
</html>