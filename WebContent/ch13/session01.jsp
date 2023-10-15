<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
	<!-- 폼페이지, 폼태그 
	요청URL : session01_process.jsp
	요청파라미터 : {id=admin&passwd=java}
	-->
	<h3>${sessionScope.userId}</h3>
	<h3>${sessionScope.userPw}</h3>
<!-- 	<form action="session01_process.jsp" method="post"> -->
	<form action="session01_process2.jsp" method="post">
		<!-- 폼 데이터 -->
		<p>아이디 : <input type="text" name="id" value='<%=session.getAttribute("userId")%>' required autofocus /></p>
		<p>비밀번호 : <input type="password" name="passwd" value='<%=session.getAttribute("userPw")%>' required /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
</body>
</html>