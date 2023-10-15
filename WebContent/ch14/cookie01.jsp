<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Cookie</title>
</head>
<body>
<%	//스크립틀릿
	//request.getCookies()메소드 : 쿠키정보를 얻어옴
	Cookie[] cookies = request.getCookies();
	out.print("<p>cookies.length : " + cookies.length +"</p>");
	for(int i=0; i<cookies.length; i++){
		out.print("<p>"+cookies[i].getName()+" : "+
						cookies[i].getValue()+"</p>");
	}
	out.print("<p>session.getId() : " + session.getId() + "</p>");
%>

	<!-- 
	요청URL : cookie01_process.jsp
	요청파라미터 : {id=master,passwd=java}
	 -->
	<form action="cookie01_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="text" name="passwd" /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
</body>
</html>