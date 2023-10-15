<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Object</title>
</head>
<body>
<%
	out.print("오늘의 날짜 및 시간 : <br /> ");
	out.println("<p>" + Calendar.getInstance().getTime() + "</p>");
	out.print("개똥이");
%>
</body>
</html>