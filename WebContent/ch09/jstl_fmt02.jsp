<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h2>국제화<h2>
	
	<!-- 숫자 : 3,200,100 -->
	<p>숫자 : <fmt:formatNumber value="3200100" /></p>
	<!-- 3,200,100 -->
	<p>숫자 : <fmt:formatNumber value="3200100" type="number" /></p>
	<!-- 3200100 -->
	<p>숫자 : <fmt:formatNumber value="3200100" type="number" 
		groupingUsed="false"/></p>
	<!-- ￦3,200,100 -->	
	<p>숫자 : <fmt:formatNumber value="3200100" type="currency" 
	groupingUsed="true"/></p>
	<!-- 가장많이 사용 !! 금3,200,100 -->
	<p>숫자 : <fmt:formatNumber value="3200100" type="currency" 
	currencySymbol="금"/></p>
	<!-- 45% -->
	<p>숫자 : <fmt:formatNumber value="0.45" type="percent"/></p>
	<!-- 200100.450 -->
	<p>숫자 : <fmt:formatNumber value="200100.45" pattern=".000"/></p>
	<!-- 가장많이 사용 !! 천단위 구분기호, 소수점 2자리 200,100.46-->
	<p>숫자 : <fmt:formatNumber value="200100.456" pattern="#,#00.0#"/></p>
	
	
</body>
</html>