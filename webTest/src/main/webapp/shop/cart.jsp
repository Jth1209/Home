<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %>
<!DOCTYPE html>
<html>
<head>
    <title>쇼핑 카트</title>
</head>
<body>
    <h1>나의 카트</h1>
    <%
        HashMap<String, Integer> cart = (HashMap<String, Integer>) session.getAttribute("cart");
        HashMap<String, Integer> price = (HashMap<String, Integer>) session.getAttribute("price");
         
        if (cart == null || cart.isEmpty()) {
            out.println("<p>카트가 비어 있습니다.</p>");
        } else {
            out.println("<ul>");
            for (Map.Entry<String, Integer> entry : cart.entrySet()) {
                out.println("<li>" + entry.getKey() + " - 수량: " + entry.getValue() + "</li> <button type=button onclick=\"location.href=\'/webTest/shop/plus.jsp?name="+entry.getKey()+"\'\">+</button> <button type=button onclick=\"location.href=\'/webTest/shop/minus.jsp?name="+entry.getKey()+"\'\">-</button>");
            }
            out.println("</ul>");
        }
    %>
    <a href="products.jsp">쇼핑 계속하기</a>
</body>
</html>