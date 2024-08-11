<%@page import="board.boardDAO"%>
<%@page import="board.boardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String num = request.getParameter("num");
	String writer = request.getParameter("writer");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	boardDTO dto = new boardDTO(Integer.parseInt(num),writer,title,content,"dummy",0);
	boardDAO dao = new boardDAO();
	dao.updateBoard(dto);
%>

	<jsp:forward page="boards.jsp"></jsp:forward>