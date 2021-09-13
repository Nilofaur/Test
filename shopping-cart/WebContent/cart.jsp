<%@page import="na.ecomm.connection.DbCon"%>
<%@page import="na.ecomm.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	User auth = (User) request.getSession().getAttribute("auth");

if (auth != null) {
	request.setAttribute("auth", auth);
}
%>
<!DOCTYPE html>
<html>

<head>
<title>Cart</title>

<%@include file="/includes/head.jsp"%>
</head>
<body>

	<%@include file="/includes/navbar.jsp"%>

	<div class="container my-3">
		<div class="d-flex py-3">
			<h3>Total Price: £35</h3>
			<a class="mx-3 btn btn-primary" href="#">Check Out</a>
		</div>
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Price</th>
					<th scope="col">Buy Now</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>hair</td>
					<td>hair mask</td>
					<td>£10</td>
					<td>
						<form action="" method="post" class="form-inline">
							
							<div class="form-group d-flex justify-content-between">
								<a class="btn btn-sm btn-incre" href=""><i
									class="fas fa-plus-square"></i></a> <input type="text"
									name="quantity" class="form-control" value="1" readonly>
								<a class="btn btn-sm btn-decre" href=""><i
									class="fas fa-minus-square"></i></a>
							</div>


						</form> <%@include file="/includes/footer.jsp"%>
</body>
</html>