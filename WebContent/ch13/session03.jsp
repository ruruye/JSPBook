<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>session</title>
</head>
<body>
<%
	/*
	session.setAttribute("속성명",데이터)
	데이터 : Object개체 타입만 가능함,  double(x), char(x)
	*/
	int a = 10;
	double b = 20.2;
	char c = 'a';
	session.setAttribute("test", a);
	session.setAttribute("test2", b);
	session.setAttribute("test3", c);
	
	out.print("test : " + session.getAttribute("test") + "<br />");
	out.print("test2 : " + session.getAttribute("test2") + "<br />");
	out.print("test3 : " + session.getAttribute("test3") + "<br />");
	
	String name; //세션 속성 명
	String value; //세션값
	//session 내장 객체 내 어떤 속성값들이 있는지?
	Enumeration en = session.getAttributeNames();
	//세션 속성 명이 있을때까지만 반복
	while(en.hasMoreElements()){
		name = en.nextElement().toString();
		value = session.getAttribute(name).toString();
		
		out.print("설정된 세션 속성 명 : " + name + "<br />");
		out.print("설정된 세션 속성 값 : " + value + "<br />");
	}
%>
</body>
</html>