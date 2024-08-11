<%@page import="board.boardDAO"%>
<%@page import="board.boardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String writer = request.getParameter("writer");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	boardDTO dto = new boardDTO(0,writer,title,content,"dummy",0);
	boardDAO dao = new boardDAO();
	dao.insertBoard(dto);
%>
<jsp:forward page="boards.jsp"></jsp:forward>