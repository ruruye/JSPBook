<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
/*
요청URL : out02_process.jsp
요청방식 : post
요청파라미터(HTTP파라미터, QueryString) : {id=a001, passwd=java}
*/
   request.setCharacterEncoding("UTF-8");
   String id = request.getParameter("id"); //a001
   String passwd = request.getParameter("passwd"); //java
%>
<p>아이디 <%out.print(id);%></p>
<p>비밀번호 <%out.print(passwd);%></p>