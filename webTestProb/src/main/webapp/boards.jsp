<%@page import="board.boardDTO"%>
<%@page import="java.util.List"%>
<%@page import="board.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("login") != null){
		boardDAO dao = new boardDAO();
		List<boardDTO> dto = dao.selectAll();
		request.setAttribute("board", dto);
%>	
		<jsp:forward page="boardView.jsp"></jsp:forward>
<%	
	}else{
		out.println("<script type='text/javascript'>");
        out.println("alert('로그인 후 이용할 수 있는 기능입니다.');");
        out.println("window.location.href = 'index.jsp';");
        out.println("</script>");	
	}
%>