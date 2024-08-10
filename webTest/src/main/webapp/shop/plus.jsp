<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
HashMap<String, Integer> cart = (HashMap<String, Integer>) session.getAttribute("cart");

String name = request.getParameter("name");

cart.put(name, cart.get(name) + 1);

response.sendRedirect("cart.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>