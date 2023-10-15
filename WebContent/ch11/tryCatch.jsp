<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<!-- 
	post방식
	요청URL : tryCatch_process.jsp
	요청파라미터 : {num1=12&num2=6n}
	
	get방식
	요청URL : tryCatch_process.jsp?num1=12&num2=6
	요청파라미터 : num1=12&num2=6n
	 -->
	<form action="tryCatch_process.jsp" method="post">
		<p>숫자 1 : <input type="text" name="num1" /></p>
		<p>숫자 2 : <input type="text" name="num2" /></p>
		<p><input type="submit" value="나누기" /></p>
	</form>
</body>
</html>