<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>세션들 중에서 특정 세션을 꼭 찝어서 그것만 제거해보자</title>
</head>
<body>

<!-- session01.jsp와 session01_process02.jsp를 먼저 수행 후 
	session.setAttribute("usedId","admin")
	session.setAttribute("usedPw","java")
-->
<h4>세션 삭제 전</h4>
<%
	String userId = (String)session.getAttribute("userId");//admin
	String userPw = (String)session.getAttribute("userPw");//java
	out.print("설정된 세션 이름 userId 값 : " + userId + "<br />");
	out.print("설정된 세션 이름 userPw 값 : " + userPw + "<br />");
	
	//세션 속성 중 userId 속성을 제거(잘 안씀)
	session.removeAttribute("userId"); //admin -> null
%>

<h4>세션 삭제 후</h4>
<%
	userId = (String)session.getAttribute("userId");//null
	userPw = (String)session.getAttribute("userPw");//java
	out.print("설정된 세션 이름 userId 값 : " + userId + "<br />");
	out.print("설정된 세션 이름 userPw 값 : " + userPw + "<br />");
%>

</body>
</html>