<%@page import="na.ecomm.connection.DbCon"%>
<%@page import="na.ecomm.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% 
	User auth= (User) request.getSession().getAttribute("auth");
	
	if (auth != null) {
	    request.setAttribute("auth", auth);
	}
	
	
	%>
<!DOCTYPE html>
<html>

<head>
<title>Orders</title>

<%@include file="/includes/head.jsp"%>
</head>
<body>

<%@include file="/includes/navbar.jsp"%>
<h1> hello Orders</h1>
<%@include file="/includes/footer.jsp"%>
</body>
</html>