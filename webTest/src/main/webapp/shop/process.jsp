<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
HashMap<String, Integer> cart = (HashMap<String, Integer>) session.getAttribute("cart");
HashMap<String, Integer> pricee = (HashMap<String, Integer>) session.getAttribute("price");

if (cart == null) {
    cart = new HashMap<>();
    pricee = new HashMap<>();
}

request.setCharacterEncoding("UTF-8");
String product = request.getParameter("product");
int price = Integer.parseInt(request.getParameter("price"));

pricee.put(product, price);

if (cart.containsKey(product)) {
    cart.put(product, cart.get(product) + 1);
} else {
    cart.put(product, 1);
}
// DB insert 해야 할 곳
session.setAttribute("cart", cart);
response.sendRedirect("cart.jsp");

%>