<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>

<%! // 선언문 태그
	// a,b 는 정수형 매개변수
	// 리턴타입(정수형)
	// 전역 메소드
	int sum(int a, int b){
		return a+b;
	}
%>
<% 
// sum 이라는 전역메소드를 호출(두개의 파라미터 전달)
	out.println("2 + 3 = " + sum(2,3));
%>

</body>
</html>