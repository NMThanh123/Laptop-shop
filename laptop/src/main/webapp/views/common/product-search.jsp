<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="pro"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600"
	rel="stylesheet" type="text/css">
</head>
<body>

	<!-- Display Product -->

	<div style="text-align: center">
		<table style="width: 70%" align="center">
			<thead>
				<th colspan="25"
					style="color: #3366cc; font-size: 50px; letter-spacing: 1.5px; line-height: 1.5">Các
					loại laptop nổi bật  <br> <h2>(Tổng số sản phẩm: ${countAllProduct})</h2> <br>
				</th>
			</thead>

			<tbody>
				<pro:forEach var="i" items="${list}">
					<th>
					<td><a href="product?id=${i.productID}" class="btn"> <img
							src="${pageContext.request.contextPath}/image/product_img/${i.image}"
							border="0" alt="Logo"
							style="width: 200px; height: 150px; border-radius: 20%; box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);">
					</a>
						<div
							style="color: red; font-size: 120%; padding-left: 70px; padding-right: 70px; position: relative">
							<b>${i.name}</b> <br> <br> <br>
						</div></td>

					</th>
				</pro:forEach>
			</tbody>
		</table>
	</div>
 
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
		<pro:if test="${indexpage>1}">
				<li class="page-item"><a class="page-link"
					href="${pageContext.request.contextPath}/search?index=${indexpage-1}" aria-label="Previous">
						<span aria-hidden="true">&laquo;</span><span
					class="sr-only">Previous</span></a></li>
		</pro:if>
		<pro:forEach begin="1" end="${end}" var="i">
				<li class='${indexpage==i?"active":""}'><a class="page-link"
					href="${pageContext.request.contextPath}/search?index=${i}">${i}</a></li>
		</pro:forEach>
		<pro:if test="${indexpage<end}">
				<li class="page-item"><a class="page-link"
					href="${pageContext.request.contextPath}/search?index=${indexpage+1}" aria-label="Next">
						<span aria-hidden="true">&raquo;</span><span
					class="sr-only">Next</span></a></li>
		</pro:if>
		</ul>
	</nav>

</body>
</html>