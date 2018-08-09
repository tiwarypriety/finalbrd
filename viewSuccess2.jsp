<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ page isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page errorPage = "errorHandler.jsp" %>
<html>
<head>
<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-1.12.4.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" type="text/javascript"></script>
<title>View Success Page</title>
</head>
<%@ include file="menu2.jsp" %>
<body class="bg">
<center>
<table id="example" class="display" cellspacing="0" width="400px">
        <!-- <thead> -->
            <tr>
                 <th>UserName</th>
                 <!-- <th>Password</th> -->
                 <th>Enabled</th>
            </tr>
        <tr>
			      <td>${user.username}</td>
                 <%--  <td>${user.password}</td> --%>
                  <td>${user.enabled}</td>
                </tr>
		
</table>
<script src="https://code.jquery.com/jquery-1.12.4.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
</center>
</body>
</html>