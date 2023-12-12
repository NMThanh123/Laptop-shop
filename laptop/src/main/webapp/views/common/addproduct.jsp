<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>add product</title>

</head>
<body>
	<br>
	<br>
	<div style="width: 1000px;border-radius: 10px;background-color: #f2f2f2;padding: 10px;margin:0 auto ; width:40%">
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
	<form action ="add-product" method ="post" enctype="multipart/form-data" style="text-align:left">
		<label style="font-size:20px">Nhập ID sản phẩm:</label>
		<input style="width:100%;font-size:20px" type ="number" name="productID"> 
		<br>
		<br>
		<label style="font-size:20px">Nhập ID category: </label>
		<input style="width:100%;font-size:20px" type ="number" name="categoryID"> 
		<br>
		<br>
		<label style="font-size:20px">Nhập tên sản phẩm:</label>
		<input style="width:100%;font-size:20px" type ="text" name="name"> 
		<br>
		<br>
		<div class="form-group">
					<label for="images" style="font-size:20px">Images:</label> <input type="file"
						class="form-control" name="image" id="image"
						value="${product.image}" />
				</div>
				
				<div class="form-group" align="center">
					<c:url
						value="/image?fname=/${product.image!=null?product.image:'uploads/abc.jpg'}"
						var="imgUrl"></c:url>
						
					<img width="150px" height="150px" src="${pageContext.request.contextPath}/image/product_img/${product.getImage()}">
				</div>
		<label style="font-size:20px">Nhập mô tả:</label><br>
		<textarea style="font-size:20px; width:100%; height: 250px" name="desc" cols="21" class="form-control"></textarea> <br>
		<label style="font-size:20px">Nhập giá:</label>
		
		<input style="width:100%;font-size:20px" type ="text" name="price"> <br><br>
		<label style="font-size:20px">Nhập tổng số:</label>
		<input style="width:100%;font-size:20px" type ="text" name="amount"> <br>
		<br>
		<input style="font-size:20px" type="submit" value = "Thêm sản phẩm">
	</form>
	</div>

</body>
</html>