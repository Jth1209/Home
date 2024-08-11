<%@page import="member.memberDAO"%>
<%@page import="member.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("username");
	String pw = request.getParameter("password");
	String name = request.getParameter("name");
	
	memberDTO dto = new memberDTO(id,pw,name);
	memberDAO dao = new memberDAO();
	dao.insertUser(dto);
	out.println("<script type='text/javascript'>");
    out.println("alert('회원가입 성공');");
    out.println("window.location.href = 'loginView.jsp';");
    out.println("</script>");
%>
