<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="edit" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<a href="add-product">
	<input type="submit" value="Thêm sản phẩm" style="font-weight:bold;width:150px;position:relative;left:1115px;border-width:1px" 
		onmouseover="this.style.backgroundColor = 'red';" onmouseout="this.style.backgroundColor = '#f8f9fa';">
	</a>
	<br>
	<br>
	<h4 style="color:blue; font-weight:bold ; font-size:25px; text-align:center">CategoryID (1:Aspire,
									2: Nitro,
									3: Triton,
									4: TUF,
									5: ROG,
									6: Victus,
									7: Omen,
									8: Inspiron,
									9: Vostro,
									10: Katana,
									11: Cyborg)</h4>
	<br>
	<table border ="1" style="text-align:center" align="center" width="70%">
		<thead>
			<th>ProductID</th>
			<th>CategoryID</th>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Amount</th>
			<th >Action</th>
		</thead>
		<tbody>
		<edit:forEach var="item" items="${list}">
			<tr>
				<td>${item.productID}</td>
				<td>${item.categoryID}</td>
				<td style="padding: 5px">${item.name}</td>
				<td style="padding: 10px">${item.description}</td>
				<td>${item.price}</td>
				<td>${item.amount}</td>
				<td width="10%">
				<a href="update-product?id=${item.productID}" style="text-decoration:none; color:blue">Update</a>  or  
				<a href="delete-product?id=${item.productID}" style="text-decoration:none; color:blue">Delete</a>
				</td>
			</tr>
		</edit:forEach>
		</tbody>
		
	</table>
</body>

</html>