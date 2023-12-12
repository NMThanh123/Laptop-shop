<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
<table align="center" border="1" style="width: 80%; text-align: center">
		<thead >
			<th >Sản phẩm</th>
			<th>Đơn giá</th>
			<th>Thao tác</th>
		</thead>
		<tbody>
			<c:forEach var="i" items="${list}">
				<tr>
					<td>
					<br>
					<img src="${pageContext.request.contextPath}/image/product_img/${i.image}" border="0" alt="Logo" 
					style="width: 150px; height: 120px; border-radius: 20%; box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);">
					<p>
					<br>
					${i.name}
					</p>
					</td>
					<td style="color:red; font-weight:bold">
					${i.price} đ
					</td>
					<td><a href="delete-cart?id=${i.cartID}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div style="font-weight:bold; font-size:20px; text-align:right; padding: 20px 250px">
		<a href="go-to-pay" >Thành tiền: ${total} đ</a>
	</div>
	
</body>
</html>