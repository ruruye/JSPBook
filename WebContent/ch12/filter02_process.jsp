<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>filter</title>
</head>
<body>
<!--  
	사용자가 입력한 요청파라미터
	/filter02_process.jsp
	{id=admin&passwd=1234}
-->

<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
%>
<p>입력된 id 값 : <%=id%></p>
<p>입력된 passwd 값 : <%=passwd%></p>
</body>
</html>