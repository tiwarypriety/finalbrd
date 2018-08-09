<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REFRESH</title>
<script>
window.setInterval(function() {
    reloadIFrame()
}, 10000);

function reloadIFrame()
{
  document.getElementById('iframe').contentWindow.location.reload();
 }
 </script>
</head> 
<body >
<div id="divtable2">
<iframe id="iframe" src="/SpringBRD14/viewAll" height="700px" width="550px"></iframe>
</div>
</body>
</html>