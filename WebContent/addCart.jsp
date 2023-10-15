<%@page import="java.util.ArrayList"%>
<%@page import="vo.ProductVO"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	//from : product.jsp
	//to   : post방식으로 addCart.jsp?productId=P1234
	//요청방식 : post방식
	String productId = request.getParameter("productId"); //P1234
	
	out.print("productId : " + productId);
	
	//trim() : 공백제거
	//addCart.jsp or addCart.jsp?productId=
	if(productId==null || productId.trim().equals("")){
		response.sendRedirect("products.jsp");
		return;
	}
	
	//기본키인 P1234코드의 상품을 찾아보자
	//싱글톤 패턴으로 객체를 1회 생성
	ProductRepository dao = ProductRepository.getInstance();
	
	//select * from Product where id = 'P1234'
	ProductVO product = dao.getProductId(productId);
	
	//상품 결과가 없으면
	if(product==null){
		//[상품이 없음]예외처리 페이지로 강제 이동
		response.sendRedirect("exceptionNoProductId.jsp");
	}
	
	//상품이 있으면 계속 실행
	//장바구니(세션) => 세션명 : cartlist
	ArrayList<ProductVO> list = (ArrayList<ProductVO>)session.getAttribute("cartlist");
	
	//장바구니가 없으면 생성
	if(list==null){
		//list는 null이므로 여기서 리스트를 생성해줘야함
		list = new ArrayList<ProductVO>();
		//cartlist라는 세션명으로 생성
		session.setAttribute("cartlist", list);
	}
	
	//1) 장바구니에 P1234 상품이 이미 들어있는 경우
		//private int quantity; //장바구니에 담은 개수
		//quantity를  1 증가
		
	int cnt = 0;
	//장바구니가 있다면 다음을 실행
	for(int i=0; i<list.size(); i++){
		//list는 P1234, P1235, P1236
		//list.get(0).getProductId().equals("P1234")
		if(list.get(i).getProductId().equals(productId)){
			cnt++; //장바구니에 넣을 상품을 찾았다면 1 증가
			//장바구니에 상품이 이미 들어있다면 장바구니에 담은 개수를 1증가
			//list.get(i) : productVO
			list.get(i).setQuantity(list.get(i).getQuantity()+1);
		}
	}

	//2) 장바구니에 P1234 상품이 없는 경우
	if(cnt==0){
		//quantity를  1로처리
		product.setQuantity(1);
		//장바구니에 P1234 상품을 넣어주고
		list.add(product);
	}
	
	//장바구니 확인
	//ArrayList<productVO> : list
	for(ProductVO vo : list){
		out.print("vo : " + vo + "<br /><hr />");
	}
	
	response.sendRedirect("product.jsp?productId="+productId);
%>