<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!-- /producteee.jsp -->
<title>페이지 오류</title>
</head>
<body>
	<!-- //////////// header 시작(menu.jsp) ////////////// -->
	<%@ include file="menu.jsp" %>
	<!-- //////////// header 끝(menu.jsp) ////////////// -->
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다</h2>
		</div>
	</div>
	<div class="container">
		<!-- .getRequestURI() : http://localhost/product.jsp 
		-->
		<p><%=request.getRequestURI()%></p>
		<p><a href="products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a></p>
	</div>
	<!-- //////////// footer 시작(footer.jsp) ////////////// -->
	<%@ include file="footer.jsp" %>
	<!-- //////////// footer 끝(footer.jsp) ////////////// -->
	

</body>
</html>