<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="vo.UsersVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
// 요청URL : validation05_process.jsp
// 요청파라미터 :  {
// 	id = a001
// 	passwd = 1234
// 	name = 홍길동
// 	phone1=010,phone2=1234,phone3=5678,
// 	email=test@test.co.kr	}
// 요청방식 : post

//문자 인코딩 유형 처리
request.setCharacterEncoding("utf-8");

String id     = request.getParameter("id");
String name     = request.getParameter("name");
String passwd = request.getParameter("passwd");
String phone  = request.getParameter("phone");
String phone1 = request.getParameter("phone1");
String phone2 = request.getParameter("phone2");
String phone3 = request.getParameter("phone3");
String email  = request.getParameter("email");

UsersVO usersVO = new UsersVO(phone1, phone2, phone3);
usersVO.setId(id);
usersVO.setName(name);
usersVO.setPasswd(passwd);
//usersVO.setPhones(phone1, phone2, phone3);
usersVO.setEmail(email);

//out.print("usersVO : " + usersVO);
%>
<c:set var="usersVO" value="<%=usersVO%>" />
<p>아이디 : ${usersVO.id}</p>
<p>이름 : ${usersVO.name}</p>
<p>비밀번호 : ${usersVO.passwd}</p>
<p>연락처 : ${usersVO.phone}</p>
<p>이메일 : ${usersVO.email}</p>