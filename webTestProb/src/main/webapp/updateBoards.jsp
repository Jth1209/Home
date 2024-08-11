<%@page import="board.boardDTO"%>
<%@page import="board.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num");
	boardDAO dao = new boardDAO();
	dao.updateHits(Integer.parseInt(num));
	boardDTO dto = dao.selectBoard(Integer.parseInt(num));
	request.setAttribute("board", dto);
%>
	<jsp:forward page="updateView.jsp"></jsp:forward>