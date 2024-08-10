<%@page import="shop.Product"%>
<%@page import="shop.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("update");
	request.setAttribute("id",id );
	ProductDAO dao = new ProductDAO();
	Product dto = dao.getProductById(Integer.parseInt(id));
	request.setAttribute("dto", dto);
%>

<jsp:forward page="updteView.jsp"></jsp:forward>