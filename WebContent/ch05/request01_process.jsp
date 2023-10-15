<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<!-- 
		요청URL : request01_process.jsp
		요청파라미터 : {id=a001&passwd=java} 
 -->
<% //스크립틀릿
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");//a001
	String passwd = request.getParameter("passwd");//java
	
	//헤더에 있는 host라는 name에 매핑되어있는 값 가져오기
	String hostValue = request.getHeader("host");  //누구니 넌?
	//헤더에 있는 accept-language라는 name에 매핑되어있는 값 가져오기
	String alValue = request.getHeader("accept-language");
			
%>
<p>아이디 : <%=id%></p>
<p>비밀번호 : <%=passwd%></p>
<p>누구니 넌? : <%=hostValue%></p>
<p>어떤말쓰니? : <%=alValue%></p>
<a href="request02.jsp">모든 헤더 정보 가져오기</a>