<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
HashMap<String, Integer> cart = (HashMap<String, Integer>) session.getAttribute("cart");

String name = request.getParameter("name");

if(cart.get(name) > 1){
	cart.put(name, cart.get(name) - 1);
}else{
	  out.println("<script type='text/javascript'>");
      out.println("alert('최소 한 개의 상품은 구매하셔야 합니다.');");
      out.println("window.location.href = 'cart.jsp';");
      out.println("</script>");
}

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