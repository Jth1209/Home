<%@page import="board.DTO"%>
<%@page import="board.DAO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

String num = request.getParameter("num");
String title = request.getParameter("title");
String writer = request.getParameter("writer");
String content = request.getParameter("content");

DAO dao = new DAO();
dao.insertData(writer, title, content);


response.sendRedirect("list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

</body>
</html>