<%@page import="na.ecomm.connection.DbCon"%>
<%@page import="na.ecomm.model.*"%>
<%@page import="java.util.*"%>
<%@page import="na.ecomm.dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	User auth = (User) request.getSession().getAttribute("auth");

if (auth != null) {
	request.setAttribute("auth", auth);
}

ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();
%>
<!DOCTYPE html>
<html>

<head>
<title>Index</title>

<%@include file="/includes/head.jsp"%>
</head>
<body>

	<%@include file="/includes/navbar.jsp"%>

	<%
		out.print(DbCon.getConnection());
	%>


	<div class="container">
		<div class="card-header my-3">All Products</div>
		<div class="row">


	<%
				if (!products.isEmpty()) {
				for (Product p : products) {
			%>


			<div class="col-md-3 my-3">

				<div class="card w-100" style="width: 18rem;">
					<img class="card-img-top" src="product-images/<%= p.getImage() %>"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName()%></h5>
						<h5 class="price">
							price £
							<%=p.getPrice()%></h5>
						<h5 class="category">
							Category:
							<%=p.getCategory()%></h5>


						<div class="mt-3 d-flex justify-content-between">
							<a href="#" class="btn btn-dark">Add to Cart</a> <a href="#"
								class="btn btn-primary">Buy now</a>
						</div>
					</div>
				</div>
			</div>

			<% }
				
			}
		%>


		</div>
	</div>


	<%@ include file="/includes/footer.jsp"%>
</body>
</html>