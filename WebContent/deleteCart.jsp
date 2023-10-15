<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%	//스크립틀릿
	//deleteCart.jsp?cartId=ED9C34DBEC92E94BB1EA3CA4F4EE2B0D
	//요청파라미터 : cartId=ED9C34DBEC92E94BB1EA3CA4F4EE2B0D
	//session.getId() : 세션고유아이디 = 고유장바구니 = 동일웹브라우저 = 1명의 고객
	String cartId = request.getParameter("cartId");//ED9C34DBEC92E94BB1EA3CA4F4EE2B0D
	
	//cartId가 없네? => cart.jsp로 이동
	if(cartId==null || cartId.trim().equals("")){
		response.sendRedirect("cart.jsp");
		return;
	}
	
	//장바구니만 비우자
	session.removeAttribute("cartlist");	//장바구니만 꼭 찝어서 삭제
	//만약 session.invalidate() = >모든 세션을 삭제, 로그아웃도 되버림
	
	//cart.jsp
	response.sendRedirect("cart.jsp");
%>