<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h3>이 파일은 first.jsp입니다.</h3>
	<!-- forward액션태그 : 다른 페이지를 포함
	요청URI : second.jsp?date=오늘날짜
	요청파라미터(Http파라미터=QueryString) : date=오늘날짜 
	-->
	<jsp:include page="second.jsp">
		<jsp:param name="date" value="<%=new Date() %>" />
	</jsp:include>
	<p>===first.jsp의 페이지</p>
</body>
</html>