<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="cate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cửa hàng laptop</title>
<link rel="icon" type="image/png" href="https://images.freeimages.com/fic/images/icons/2740/pretty_office_icon_set_part_10/512/laptop.png"/>

</head>
<body>
<div class="container-fluid p-0 m-0">
	  <div id="demo" class="carousel slide" data-ride="carousel" data-interval="2000">
	
	  <!-- Indicators -->
	  <ul class="carousel-indicators">
	    <li data-target="#demo" data-slide-to="0" class="active"></li>
	    <li data-target="#demo" data-slide-to="1"></li>
	    <li data-target="#demo" data-slide-to="2"></li>
	  </ul>
	  
	  <!-- The slideshow -->
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img width="100%" src="https://cdn.tgdd.vn/Products/Images/44/235405/Slider/acer-aspire-7-a715-42g-r4st-r5-nhqaysv004-1020x570.jpg" alt="Los Angeles" width="1100" height="500">
	    </div>
	    <div class="carousel-item">
	      <img width="100%" src="http://24laptop.vn/upload/10.10.2018/Laptop%20Gaming%20Asus%20TUF%20FX504GD-E4571T-6.png" alt="Chicago" width="1100" height="500">
	    </div>
	    <div class="carousel-item">
	      <img width="100%" src="https://www.anphatpc.com.vn/media/news/0410_z2816722172496_d382b1d3d707a7a3b52778e5dd930be6.jpg" alt="New York" width="1100" height="500">
	    </div>
	  </div>
	  
	  <!-- Left and right controls -->
	  <a class="carousel-control-prev" href="#demo" data-slide="prev">
	    <span class="carousel-control-prev-icon"></span>
	  </a>
	  <a class="carousel-control-next" href="#demo" data-slide="next">
	    <span class="carousel-control-next-icon"></span>
	  </a>
	</div>
</div>

<div style="text-align: center">
	<table  style="width: 30%" align="center">
		<thead>
		<th colspan="25" style="color:#3366cc;font-size:50px;letter-spacing: 1.5px; line-height: 1.5">Các loại laptop nổi bật
		<br>
		<br>
		</th>
		</thead>
		
		<tbody>
			<cate:forEach var="i" items="${list}">
				<th>
				<td>
					<a href="${i.categoryName}" class="btn">
					<img src="${pageContext.request.contextPath}/image/category_img/${i.icon}" border="0" alt="Logo" 
					style="width: 180px; height: 150px; border-radius: 20%; box-shadow: 0 0 3px rgba(0, 0, 0, 0.3);
					">
					</a>
					<div style="color:red; font-size:160%">
						<b>${i.categoryName}</b>
					</div>
					</td>
					
				</th>
			</cate:forEach>
		</tbody>
	</table>
</div>
</body>
</html>