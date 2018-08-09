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
<title>Add Customer</title>
<!-- <script>
function Validation() 
{
	var x1=document.forms["registerForm"]["cCode"].value;
    var x2 = document.forms["registerForm"]["eName"].value;
    var x3=document.forms["registerForm"]["cAddress"].value;
    var x4=document.forms["registerForm"]["cPincode"].value;
    var x5=document.forms["registerForm"]["cEmail"].value;
    var x6=document.forms["registerForm"]["cContact"].value;
  
    if (x1 == " " || x2 == " " || x3 == " " || x4 == " " || x5 == " " || x6 == " ") 
    {
    	 alert("All fields must be filled out");
    	 return false;
    }
    else if (isNaN(x4) || (x4.length != 6)) 
    {
	   txt="Pincode length invalid";
	   document.getElementById("p1").innerHTML = txt;
	   document.getElementById("p1").style.color="red";
	   return false;
    }
    else if(x6.length != 10)
    {
       txt="Contact Length Invalid";
       document.getElementById("p3").innerHTML = txt;
       document.getElementById("p3").style.color="red";
       return false;
    }
    else if(!(x5.matches("[a-zA-Z0-9]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,3}")))
    {
    	txt="Invalid Email";
        document.getElementById("p2").innerHTML = txt;
        document.getElementById("p2").style.color="red";
        return false;
    }
    return true;
 }	
</script> -->

</head>
<body>
<div class="container">
<%@ include file="menu.jsp" %>
<div class="row">
<div class="col-md-7">
<div style="float:left; width:30%;">
<center>
<s:form action="/SpringBRD14/add" method="post" modelAttribute="customer">
<center>
<br>
<h1>Registration Page!!</h1><br><br>
<table>
<tr>
<b>Customer Code:</b>
</tr>
<tr>
<s:input path="eCode" size="70"/> <s:errors path="eCode" />
</tr>
<br><br><br>
<tr>
<b>Customer Name:</b>
</tr>
<tr>
<s:input path="eName" size="70"/> <s:errors path="eName" /> <br>
</tr>
<br><br><br>
<tr>
<b>Customer Address:</b>
</tr>
<tr>
<s:textarea rows="2" cols="70" path="cAddress"/> <s:errors path="cAddress" /><br>
</tr>
<br><br><br>
<tr>
<b>Customer PinCode:</b>
</tr>
<tr>
<s:input path="cPincode" size="70"/> <s:errors path="cPincode"/><br>
</tr>
<br><br><br>
<tr>
<b>Customer E-mail address:</b>
</tr>
<tr>
<s:input path="eEmail" size="70"/> <s:errors path="eEmail"/><br>
</tr>
<br><br><br>
<tr>
<b>Customer Contact Number:</b>
</tr>
<tr>
<s:input path="cContact" size="70"/> <s:errors path="cContact"/><br>
</tr>
<br><br>
<tr>
<center>
<td><input type="submit" id="register" name="register" value="Register" class="btn btn-success btn-sm"/></td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td>     </td>
<td><input type="reset" class="btn btn-success btn-sm" value="Reset" id="reset" name="reset"/></td>
</center>
</tr>
</table>
</center>
 </s:form>
 </div>
 </div>
<div class="col-md-5">
<jsp:include page="refresh.jsp"/>
 </div>
 </div>
 </div>
</body>
</html>