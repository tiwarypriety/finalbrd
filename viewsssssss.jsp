<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ page errorPage = "errorHandler.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file="menu2.jsp" %>
<body>
<body>
<%-- <%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");
if(session.getAttribute("custcode")==null)
{
	session.invalidate();
	response.sendRedirect("Session.jsp");
}
%> --%>
<div class="form" align="center" id="divtable">
<table id="example" class="table table-hover" width="1100px">
<thead>
<tr>

<th scope="col">Customer CODE</th>
<th scope="col">Customer Name</th>
<th scope="col">Email</th>
<th scope="col">Address</th>
<th scope="col">Contact</th>
<th scope="col">Pin Code</th>
<th scope="col">Create Date</th>
<th scope="col">Created By</th>
<th scope="col">Modified Date</th>
</tr>
</thead>
<tbody>
<c:forEach items="${list}" var="l">  
<tr>
<td><c:out value="${l.eCode}"/></td>
<td><c:out value="${l.eName}" /></td>
<td><c:out value="${l.eEmail}"/></td>
<td><c:out value="${l.cAddress}"/></td>
<td><c:out value="${l.cContact}"/></td>
<td><c:out value="${l.cPincode}"/></td>
<td><c:out value="${l.createDate}"/></td>
<td><c:out value="${l.createdBy}"/></td>
<td><c:out value="${l.modifiedDate}"/></td>
</tr>
</c:forEach>
</tbody>
</table>
</div>

</body>

<script src="https://code.jquery.com/jquery-1.12.4.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" type="text/javascript"></script>

<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
/* /*var auto_refresh = setInterval(
        function ()
        {
        $('#divtable2').load('/FinalBRD/user/viewOn').fadeIn("slow");
        }, 3000); */ 
</script>

</body>
</html>