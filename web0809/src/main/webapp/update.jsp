<%@page import="shop.ProductDAO"%>
<%@page import="shop.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String description = request.getParameter("description");
	String price = request.getParameter("price");
	String stock = request.getParameter("stock");
	
	Product p = new Product(Integer.parseInt(id),name,description,Double.parseDouble(price),Integer.parseInt(stock));
	ProductDAO dao = new ProductDAO();
	dao.updateProduct(p);
%>
<jsp:forward page="products.jsp"></jsp:forward>>