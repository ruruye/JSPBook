<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>session</title>
</head>
<body>
	<% //스크립틀릿
	
	//session.setAttribute("userId");
	//session.setAttribute("userPw");
	
	//리턴타입은 Object이므로 하위의 String 타입으로 다운 캐스팅
	String user_id = (String)session.getAttribute("userId");
	String user_pw = (String)session.getAttribute("userPw");
	
	out.print("설정된 세션의 속성 값[1] : " + user_id + "<br />");
	out.print("설정된 세션의 속성 값[2] : " + user_pw + "<br />");
	%>
</body>
</html>