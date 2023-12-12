<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
 <!DOCTYPE html>
<html>
<style>
	.nav-link:hover {
		color:black !important;}
	html {
           scroll-behavior: smooth;
       }	
        
</style>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid px-5">
        <a class="navbar-brand font-weight-bold" href="home"><img src="https://images.freeimages.com/fic/images/icons/2740/pretty_office_icon_set_part_10/512/laptop.png" alt="logo" style="width:50px; height: 50px"/>Cửa hàng laptop</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar" id="navbarsExampleDefault">
        	<form action="search" method="post" class="form-inline m-auto px-4">
                <div class="input-group input-group-lg">
                    <input name="txt" type="text" class="form-control" style="width: 300px; height:50px" placeholder="Tìm kiếm...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
                <a class="btn btn-success btn-lg ml-3" href="my-cart">
                    <i class="fa fa-shopping-cart" style="font-size:24px"></i> Giỏ hàng
                    <span class="badge badge-light">${count}</span>
                </a>
            </form>
            
            <ul class="navbar-nav m-auto">
                <li class="nav-item active">
                    <a class="nav-link font-weight-bold h5 px-2 mx-2" href="product-list">Trang chủ<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link font-weight-bold h5 px-2 mx-2" href="edit-product">Quản lí</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link font-weight-bold h5 px-2 mx-2" href="login">Đăng nhập</a>
                </li>
                <li class="nav-item active">
                    <a href="#contact" class="nav-link font-weight-bold h5 px-2 mx-2" >Liên hệ</a>
                 
                </li>
            </ul>

        </div>
    </div>
</nav>
<!--  section class="jumbotron text-center">
    <div class="container">
        <h1 class="jumbotron-heading">E-COMMERCE BOOTSTRAP THEME</h1>
    </div>
</section-->


</body>
</html>


