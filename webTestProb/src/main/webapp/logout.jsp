<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.removeAttribute("uname");
	session.invalidate();
%>
<jsp:forward page="index.jsp"></jsp:forward>
