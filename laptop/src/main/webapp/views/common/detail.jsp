<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>

<body>
<div style="text-align: center">
<br>
<br>
	<table  border = "1" style="width: 70%" align="center">
		<thead>
		<th colspan="25" style="color:#3366cc;font-size:50px;letter-spacing: 1.5px; line-height: 1.5">Chi tiết sản phẩm
		<br>
		</th>
		</thead>
		
		<tbody>
				<tr>
				<td>
				<img src="${pageContext.request.contextPath}/image/product_img/${list.image}" border="0" alt="Logo" 
					style="width: 300px; height: 200px; border-radius: 20%;
					">
				</td>
				<td width="60%" >
				<p style="padding:0px 80px; text-align: left; font-size:20px">
				<span style="font-weight:bold; font-size:23px">Tên: </span>${list.name}
				<br>
			
				<span style="color:red; font-weight:bold; font-size:25px">Giá: ${list.price} đ</span>
				<br>
				
				<span style="font-weight:bold; font-size:23px">Mô tả: </span>${list.description}
				<br>
				<span style="font-weight:bold; font-size:23px">Số lượng còn: </span>${list.amount} sản phẩm
				<br>
				<br>
				<a href="add-to-cart?id=${list.productID}">
	<input type="submit" value="Thêm vào giỏ hàng" style="width:220px;border-width:1px; font-size:20px" 
		onmouseover="this.style.backgroundColor = 'red';" onmouseout="this.style.backgroundColor = '#f8f9fa';">
	</a>
				</p>
				</td>
				</tr>
		</tbody>
	</table>
</div>
</body>
</html>