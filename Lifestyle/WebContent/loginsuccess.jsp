<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>

<%@  taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
  <h1>LOGIN success / DASHBOARD</h1>
  
  <% 
  if(session.getAttribute("username")==null)
  {
	  response.sendRedirect("login.jsp");
  }
  %>
  ok Welcome ${username} 
  <a href="plan.jsp"> Check your Plan </a>
  
  
  <form action ="logout">
  <input type="submit" value="logout">
  </form>
 </div>
</body>
</html>