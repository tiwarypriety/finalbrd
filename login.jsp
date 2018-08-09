<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN PAGE</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
    .bs-example{
    	margin: 20px;
	width:300px;
    }
     .bg 
    { 
     background-image: url("https://tse1.mm.bing.net/th?id=OIP.PuCYSDOpkTIhXMhgE9NtfgAAAA&w=289&h=162&c=7&o=5&pid=1.7");
      height: 100%; 
     background-position: center;
     /* background-repeat: no-repeat; */
     background-size: cover;
}
</style>
</head>
<body class="bg"> 
<c:if test="${not empty isError}">
Invalid User
</c:if>
    <center>
<div class="bs-example" style="margin-top:100px">
<center>
<h1>User Login</h1><br>
</center>
<center>
<img alt="image not found" src="https://tse1.mm.bing.net/th?id=OIP.PX6HAY3YzNRPbeaJZ_LemwHaHM&w=196&h=191&c=7&o=5&pid=1.7">
</center>
<br><br><br>
    <form action="/SpringBRD14/j_spring_security_check" method="post" ><!-- modelAttribute="customer"> -->
      <table>
            <tr class="form_group"><td>
            <label for="j_username">Username:&nbsp;</label></td><td>
             <input type="text" class="form-control" id="j_username" name="j_username"  required></td></tr>
           <tr class="form_group"><td>
            <label for="j_password">Password:&nbsp;</label></td><td>
            <input type="password" class="form-control" id="j_password"  name="j_password"  required></td></tr>     
         <tr><td>&nbsp;</tr>
        <tr style="margin-top:10px;"><td colspan="2" align="center" >
        <button type="submit" class="btn btn-primary">Login</button></td></tr>
        </table>
    </form>
</div>
</center>
</body>
</html>