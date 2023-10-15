<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>

<%! // 선언문 태그
	int mul(int a, int b){
		return a*b;
	}

%>
<% 
	// 전역메소드를 호출(두개의 파라미터 전달)
	for(int i=2; i<=9; i++){
		for(int j=1; j<=9; j++){
			out.print("<p>" + i + " X " + j + " = " + mul(i,j) + "</p>");
		}
	}
%>

</body>
</html>