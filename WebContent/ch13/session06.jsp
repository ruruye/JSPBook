<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>세션에 저장된 모든 세션 속성을 삭제(로그아웃 시 많이 사용됨)</title>
</head>
<body>

<!-- p.430 -->
<h4>세션 삭제 전</h4>
<%
	String userId = (String)session.getAttribute("userId");
	String userPw = (String)session.getAttribute("userPw");
	out.print("getId : " + session.getId());
	
	//클라이언트가 갖고 있는 세션이 유효한지 체크
	if(request.isRequestedSessionIdValid()==true){
		out.print("<p>세션이 유효(있다)합니다.</p>");
	}else{
		out.print("<p>세션이 유효하지 않습니다.(없다)</p>");
	}
	
	//세션에 저장된 모든 세션 속성 삭제 ******* 로그아웃 시 많이 사용됨
	session.invalidate();
%>

<h4>세션 삭제 후</h4>
<%
	out.print("getId : " + session.getId());

	if(request.isRequestedSessionIdValid()==true){
		out.print("<p>세션이 유효(있다)합니다.</p>");
	}else{
		out.print("<p>세션이 유효하지 않습니다.(없다)</p>");
	}
%>
</body>
</html>