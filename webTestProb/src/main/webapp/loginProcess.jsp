<%@page import="member.memberDAO"%>
<%@page import="member.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("username");
	String pw = request.getParameter("password");
	
	memberDTO dto = new memberDTO(id,pw,"");
	memberDAO dao = new memberDAO();
	session.setAttribute("id", id);
	
	if(dao.searchUser(dto) == 1){
		memberDTO name = dao.searchInfo(id);
		session.setAttribute("uname", name);
%>
	<jsp:forward page="index.jsp"></jsp:forward>
<%	
	}else{
		out.println("<script type='text/javascript'>");
        out.println("alert('아이디나 비밀번호를 틀렸습니다.');");
        out.println("window.location.href = 'loginView.jsp';");
        out.println("</script>");
	}
%>