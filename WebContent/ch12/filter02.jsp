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
	
	<form action="/ch12/filter02_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="text" name="passwd" /></p>
		<p><input type="submit" name="전송" /></p>
		
	</form>
</body>
</html>