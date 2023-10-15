<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<title>서비스 문제 발생</title>
</head>
<body>
	<!-- /images : WebContent > images폴더 -->
	<img src="/images/error.jpg" />
	<%
		//exception 내장객체(isErrorPage="true"일때 활성화)
		exception.printStackTrace(new PrintWriter(out));
	%>
</body>
</html>