<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- '개똥이'라고 입력했을 때
		요청URI : process.jsp
		요청파라미터 : {name=개똥이} 
-->
<%
	//한글처리
	request.setCharacterEncoding("utf-8");
	//request 내장 객체가{name=개똥이} 요청 파라미터를 갖고 있음
	String name = request.getParameter("name"); //개똥이
%>
<p>이름 : <%=name%></p>
<!-- JSTL 변수 name -->
<c:set var="name" value="<%=name%>" />
<p>이름(JSTL) : ${name}</p>

<script>
//JS변수 name
let name = "${name}"
console.log("name : " + name);
</script>