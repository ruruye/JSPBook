<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Cookie</title>
</head>
<body>
<%	//스크립틀릿
// 요청URL : cookie01_process.jsp
// 요청파라미터 : {id=master,passwd=java}
	String user_id = request.getParameter("id"); //admin
	String user_pw = request.getParameter("passwd"); //java
	
	if(user_id.equals("admin")&&user_pw.equals("java")){
		
	
	//Cookie객체 생성
	//user_id : 쿠키name, user_id(admin) : 쿠키 value
	Cookie cookie_id = new Cookie("user_id", user_id);
	response.addCookie(cookie_id);
	
	//user_Pw : 쿠키name, user_pw(java) : 쿠키 value
	Cookie cookie_pw = new Cookie("user_Pw", user_pw);
	//response 내장 객체를 통해 쿠키를 리턴받음
	response.addCookie(cookie_pw);
	out.print("<p>쿠키생성성공!</p>");
	out.print("<p>" + user_id + "님 환영합니다.</p>");
	}else{
		out.print("<p>쿠키생성실패!</p>");
	}
%>
	<p><a href="cookie01.jsp">cookie01.jsp로 이동</a></p>
	<!-- 
	csrf : cross side request fergery(스프링 시큐리티)
	 -->
</body>
</html>