<%@page import="board.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num");
	
	boardDAO dao = new boardDAO();
	dao.deleteBoard(Integer.parseInt(num));
%>
	<jsp:forward page="boards.jsp"></jsp:forward>