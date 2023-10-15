<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Directive Tag</title>
</head>
<body>
<%
	String memId = "채현이";
	//한글 처리
	memId = URLEncoder.encode(memId);
	//요것도 좋은방법
	//memId = URLEncoder.encode(memId,"UTF-8");
%>
	<!-- header를 인클루드(외부파일을 가져옴) -->
	<%@ include file="include01_header.jsp" %>
	<h4>-----현재 페이지 영억-----</h4>
	<!-- footer를 인쿨루드(외부파일을 가져옴) 
	JSP 내장객체인 request객체{요청파라미터 : memId=채현이}에 담김
	include디렉티브는 요청파라미터를 전달할 수 없음
	-->
<%-- 	<%@ include file="include01_footer.jsp?memId="+memId%> --%>
	<!-- 요청URL : include01_footer.jsp 
		요청파라미터 : memId=채현이
		요청URI : include01_footer.jsp?memId=010100101010
	-->
	<jsp:include page="include01_footer.jsp">
		<jsp:param value="<%=memId%>" name="memId"/>
	</jsp:include>
</body>
</html>