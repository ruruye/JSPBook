<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h2>국제화</h2>
	<!-- 2023.07.07 -->
	<p><fmt:formatDate value="<%=new Date()%>" type="date" /></p>
	<!-- 오전 9:38:49 -->
	<p><fmt:formatDate value="<%=new Date()%>" type="time" /></p>
	<!-- 2023.07.07 오전 9:38:49 -->
	<p><fmt:formatDate value="<%=new Date()%>" type="both" 
		dateStyle="default" timeStyle="default"/></p>
	<!-- 23. 7. 7 오전 9:42 -->
	<p><fmt:formatDate value="<%=new Date()%>" type="both" 
		dateStyle="short" timeStyle="short"/></p>
	<!-- 2023. 7. 7 오전 9:42:12 -->
	<p><fmt:formatDate value="<%=new Date()%>" type="both" 
		dateStyle="medium" timeStyle="medium"/></p>
	<!-- 2023년 7월 7일 (금) 오전 9시 42분 12초 -->
	<p><fmt:formatDate value="<%=new Date()%>" type="both" 
		dateStyle="long" timeStyle="long"/></p>
	<!-- 2023년 7월 7일 금요일 오전 9시 42분 12초 KST -->
	<p><fmt:formatDate value="<%=new Date()%>" type="both" 
		dateStyle="full" timeStyle="full"/></p>
		
	<!-- 가장많이사용  2023-07-07, oracle Date자료형-->
	<p><fmt:formatDate value="<%=new Date()%>" pattern="yyyy-MM-dd"/></p>
	<!-- 가장많이사용 2023-07-07 09:43:45, oracle Date자료형-->
	<p><fmt:formatDate value="<%=new Date()%>" pattern="yyyy-MM-dd hh:mm:ss"/></p>
		
</body>
</html>