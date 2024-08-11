w<%@page import="member.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	memberDAO dao = new memberDAO();
	dao.deleteUser(id);
	request.removeAttribute("uname");
	session.removeAttribute("id");
	
	out.println("<script type='text/javascript'>");
    out.println("alert('회원정보 삭제완료');");
    out.println("window.location.href = 'index.jsp';");
    out.println("</script>");
%>