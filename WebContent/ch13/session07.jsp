<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>세션 유효 시간 변경</title>
</head>
<body>

<h4>세션 유효 시간 변경 전</h4>
<%
	//세션에 설정된 유효시간 확인(기본1800초(30 * 60초)), 30분
	int time = session.getMaxInactiveInterval(); //초단위
	
	out.print("세션 유효 시간 : " + time + "초<br />");
%>

<h4>세션 유효 시간 변경 후</h4>
<%
	//세션 유효 시간을  60 * 60초(1시간)으로 설정
			session.setMaxInactiveInterval(1*60); //초단위
	time = session.getMaxInactiveInterval(); //3600초
	
	out.print("변경된 세션 유효 시간 : " + time + "초<br />");
	out.print("getId : " + session.getId());
%>
</body>
</html>