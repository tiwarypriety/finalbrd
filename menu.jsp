<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu Page</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    .bg 
    { 
     background-image: url("https://tse1.mm.bing.net/th?id=OIP.PPxMfa9CnhO9XpsiR-M0pQHaEK&w=284&h=160&c=7&o=5&pid=1.7");
     height: 200%; 
     background-position: center;
    /*  background-repeat: no-repeat; */
     background-size: cover;
}
    </style>
</head>
<body  class="bg">
<div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav" class="nav nav-tabs">
      <li><a href="home">Home</a></li>
      <li><a href="insert">Insert</a></li>
      <li><a href="updateId">Update</a></li>
      <li><a href="deleteId">Delete</a></li>
    <li><a href="viewId">View</a></li>
   </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="/SpringBRD14/j_spring_security_check"><span class="glyphicon glyphicon-log-out"></span> LogOut</a></li>
    </ul>
  </div>
</nav>
</div>
</body>
</html>