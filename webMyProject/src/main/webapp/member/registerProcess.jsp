<%@page import="user.DAO"%>
<%@page import="user.DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("UTF-8");

String username = request.getParameter("username");
String password = request.getParameter("password");
String email = request.getParameter("email");

DAO dao = new DAO();
DTO dto = new DTO(username,password,email);

dao.insertUser(dto);

out.println("<script type='text/javascript'>");
out.println("alert('회원가입 성공');");
out.println("window.location.href = 'index.jsp';");
out.println("</script>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

</body>
</html>